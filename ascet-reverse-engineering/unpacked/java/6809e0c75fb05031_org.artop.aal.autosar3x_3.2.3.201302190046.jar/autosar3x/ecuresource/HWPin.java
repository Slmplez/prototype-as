/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.HWPort;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface HWPin
extends Identifiable {
    public HWPort getHWPort();

    public void setHWPort(HWPort var1);
}

