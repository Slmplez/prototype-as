/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.HWElement;

public interface Peripheral
extends HWElement {
    public Boolean getCanBeDisabled();

    public void setCanBeDisabled(Boolean var1);

    public void unsetCanBeDisabled();

    public boolean isSetCanBeDisabled();
}

