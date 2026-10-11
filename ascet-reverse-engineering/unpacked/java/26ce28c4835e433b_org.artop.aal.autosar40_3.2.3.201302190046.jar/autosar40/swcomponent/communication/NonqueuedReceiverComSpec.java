/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec
 */
package autosar40.swcomponent.communication;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.filter.DataFilter;
import autosar40.swcomponent.communication.HandleTimeoutEnum;
import autosar40.swcomponent.communication.ReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec;

public interface NonqueuedReceiverComSpec
extends ReceiverComSpec,
GNonqueuedReceiverComSpec {
    public Double getAliveTimeout();

    public void setAliveTimeout(Double var1);

    public void unsetAliveTimeout();

    public boolean isSetAliveTimeout();

    public Boolean getEnableUpdate();

    public void setEnableUpdate(Boolean var1);

    public void unsetEnableUpdate();

    public boolean isSetEnableUpdate();

    public DataFilter getFilter();

    public void setFilter(DataFilter var1);

    public Boolean getHandleNeverReceived();

    public void setHandleNeverReceived(Boolean var1);

    public void unsetHandleNeverReceived();

    public boolean isSetHandleNeverReceived();

    public HandleTimeoutEnum getHandleTimeoutType();

    public void setHandleTimeoutType(HandleTimeoutEnum var1);

    public void unsetHandleTimeoutType();

    public boolean isSetHandleTimeoutType();

    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);
}

