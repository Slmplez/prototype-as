/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RequestControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;

public interface IPduTiming
extends ARObject {
    public CyclicTiming getCyclicTiming();

    public void setCyclicTiming(CyclicTiming var1);

    public EventControlledTiming getEventControlledTiming();

    public void setEventControlledTiming(EventControlledTiming var1);

    public Double getMinimumDelay();

    public void setMinimumDelay(Double var1);

    public void unsetMinimumDelay();

    public boolean isSetMinimumDelay();

    public RequestControlledTiming getRequestControlledTiming();

    public void setRequestControlledTiming(RequestControlledTiming var1);

    public TransmissionModeDeclaration getTransmissionModeDeclaration();

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration var1);
}

