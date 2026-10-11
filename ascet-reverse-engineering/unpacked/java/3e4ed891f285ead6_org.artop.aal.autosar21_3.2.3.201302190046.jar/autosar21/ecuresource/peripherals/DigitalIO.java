/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.DigitalIOEdgeDetectionEnum;
import autosar21.ecuresource.peripherals.Peripheral;

public interface DigitalIO
extends Peripheral {
    public DigitalIOEdgeDetectionEnum getEdgeDetection();

    public void setEdgeDetection(DigitalIOEdgeDetectionEnum var1);

    public void unsetEdgeDetection();

    public boolean isSetEdgeDetection();
}

