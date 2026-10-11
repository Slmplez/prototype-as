/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.ecuelectronics;

import autosar3x.ecuresource.HWElement;

public interface ECUElectronics
extends HWElement {
    public Boolean getCanBeDisabled();

    public void setCanBeDisabled(Boolean var1);

    public void unsetCanBeDisabled();

    public boolean isSetCanBeDisabled();
}

