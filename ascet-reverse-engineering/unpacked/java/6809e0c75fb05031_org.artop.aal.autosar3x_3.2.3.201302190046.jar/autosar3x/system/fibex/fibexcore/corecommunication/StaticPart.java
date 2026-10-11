/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;

public interface StaticPart
extends MultiplexedPart {
    public MultiplexedIPdu getMultiplexedIPdu();

    public void setMultiplexedIPdu(MultiplexedIPdu var1);

    public SignalIPdu getIPdu();

    public void setIPdu(SignalIPdu var1);
}

