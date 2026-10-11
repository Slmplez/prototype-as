/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource;

import autosar21.ecuresource.HWPort;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;

public interface HWPin
extends Identifiable {
    public HWPort getHWPort();

    public void setHWPort(HWPort var1);
}

