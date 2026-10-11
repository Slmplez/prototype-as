/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;

public interface TransmissionModeFalseTiming
extends ARObject {
    public TransmissionModeDeclaration getTransmissionModeDeclaration();

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration var1);

    public CyclicTiming getCyclicTiming();

    public void setCyclicTiming(CyclicTiming var1);

    public EventControlledTiming getEventControlledTiming();

    public void setEventControlledTiming(EventControlledTiming var1);
}

