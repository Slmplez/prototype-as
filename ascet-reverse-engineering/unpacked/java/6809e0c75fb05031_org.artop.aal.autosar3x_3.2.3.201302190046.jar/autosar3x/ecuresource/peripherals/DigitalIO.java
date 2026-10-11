/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.peripherals;

import autosar3x.ecuresource.peripherals.DigitalIoEdgeDetectionEnum;
import autosar3x.ecuresource.peripherals.Peripheral;

public interface DigitalIO
extends Peripheral {
    public DigitalIoEdgeDetectionEnum getEdgeDetection();

    public void setEdgeDetection(DigitalIoEdgeDetectionEnum var1);

    public void unsetEdgeDetection();

    public boolean isSetEdgeDetection();
}

