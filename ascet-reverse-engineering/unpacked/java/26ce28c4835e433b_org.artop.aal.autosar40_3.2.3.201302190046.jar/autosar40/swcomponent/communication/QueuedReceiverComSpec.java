/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.swcomponent.communication;

import autosar40.swcomponent.communication.ReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface QueuedReceiverComSpec
extends ReceiverComSpec,
GQueuedReceiverComSpec {
    public Long getQueueLength();

    public void setQueueLength(Long var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();

    public PositiveIntegerDatatype getQueueLengthData();

    public void setQueueLengthData(PositiveIntegerDatatype var1);
}

