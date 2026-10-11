/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ElementsType;
import com.etas.amd620.core.ComponentMain.ItemT;

public interface DataInterfaceT
extends ItemT {
    public ElementsType getElements();

    public void setElements(ElementsType var1);

    public double getChecksumGeneral();

    public void setChecksumGeneral(double var1);

    public void unsetChecksumGeneral();

    public boolean isSetChecksumGeneral();

    public double getChecksumPublicInterface();

    public void setChecksumPublicInterface(double var1);

    public void unsetChecksumPublicInterface();

    public boolean isSetChecksumPublicInterface();
}

