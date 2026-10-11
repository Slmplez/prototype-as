/*
 * Decompiled with CFR 0.152.
 */
package autosar21.ecuresource.processingunit;

import autosar21.ecuresource.processingunit.InterruptHWPort;
import autosar21.ecuresource.processingunit.MPU;

public interface InterruptProduceHWPort
extends InterruptHWPort {
    public MPU getMPU();

    public void setMPU(MPU var1);
}

