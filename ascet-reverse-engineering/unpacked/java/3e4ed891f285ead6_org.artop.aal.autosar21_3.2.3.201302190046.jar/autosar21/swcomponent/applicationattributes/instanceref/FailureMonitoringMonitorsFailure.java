/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.applicationattributes.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;

public interface FailureMonitoringMonitorsFailure
extends ARObject {
    public FailureMonitoring getFailureMonitoring();

    public void setFailureMonitoring(FailureMonitoring var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);
}

