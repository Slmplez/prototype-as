/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec
 */
package autosar3x.swcomponent.communication;

import autosar3x.swcomponent.communication.HandleInvalidType;
import autosar3x.swcomponent.communication.ReceiverComSpec;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec;

public interface UnqueuedReceiverComSpec
extends ReceiverComSpec,
GNonqueuedReceiverComSpec {
    public Double getAliveTimeout();

    public void setAliveTimeout(Double var1);

    public void unsetAliveTimeout();

    public boolean isSetAliveTimeout();

    public HandleInvalidType getHandleInvalid();

    public void setHandleInvalid(HandleInvalidType var1);

    public void unsetHandleInvalid();

    public boolean isSetHandleInvalid();

    public Boolean getHandleNeverReceived();

    public void setHandleNeverReceived(Boolean var1);

    public void unsetHandleNeverReceived();

    public boolean isSetHandleNeverReceived();

    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);

    public Double getResyncTime();

    public void setResyncTime(Double var1);

    public void unsetResyncTime();

    public boolean isSetResyncTime();
}

