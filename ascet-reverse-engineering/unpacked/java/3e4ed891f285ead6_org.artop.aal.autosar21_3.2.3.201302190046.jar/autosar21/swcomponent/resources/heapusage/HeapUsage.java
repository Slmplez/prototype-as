/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.heapusage;

import autosar21.ecuresource.ECU;
import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;

public interface HeapUsage
extends ARObject {
    public ECU getEcu();

    public void setEcu(ECU var1);

    public HardwareConfiguration getHardwareConfiguration();

    public void setHardwareConfiguration(HardwareConfiguration var1);

    public SoftwareContext getSoftwareContext();

    public void setSoftwareContext(SoftwareContext var1);
}

