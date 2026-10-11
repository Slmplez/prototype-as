/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec
 */
package autosar3x.swcomponent.communication;

import autosar3x.swcomponent.communication.ReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec;

public interface QueuedReceiverComSpec
extends ReceiverComSpec,
GQueuedReceiverComSpec {
    public Integer getQueueLength();

    public void setQueueLength(Integer var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();
}

