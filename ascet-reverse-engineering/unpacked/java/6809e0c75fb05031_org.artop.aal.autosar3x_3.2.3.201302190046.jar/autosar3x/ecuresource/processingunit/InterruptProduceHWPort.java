/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.ecuresource.processingunit;

import autosar3x.ecuresource.processingunit.InterruptHWPort;
import autosar3x.ecuresource.processingunit.MPU;

public interface InterruptProduceHWPort
extends InterruptHWPort {
    public MPU getMPU();

    public void setMPU(MPU var1);
}

