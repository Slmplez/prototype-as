/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar21.swcomponent.applicationattributes.instanceref.FailureMonitoringMonitorsFailure;

public interface FailureMonitoring
extends ARObject {
    public IoHwAbstractionServerAnnotation getIoHwAbstractionServerAnnotation();

    public void setIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation var1);

    public FailureMonitoringMonitorsFailure getMonitorsFailure();

    public void setMonitorsFailure(FailureMonitoringMonitorsFailure var1);
}

