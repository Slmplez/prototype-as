/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4multiplatform;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4multiplatform.Gateway;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;

public interface SignalMapping
extends ARObject {
    public Gateway getGateway();

    public void setGateway(Gateway var1);

    public ISignalTriggering getSourceSignal();

    public void setSourceSignal(ISignalTriggering var1);

    public ISignalTriggering getTargetSignal();

    public void setTargetSignal(ISignalTriggering var1);
}

