/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GServerComSpec
 */
package autosar3x.swcomponent.communication;

import autosar3x.swcomponent.communication.PPortComSpec;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import gautosar.gswcomponents.gcommunication.GServerComSpec;

public interface ServerComSpec
extends PPortComSpec,
GServerComSpec {
    public OperationPrototype getOperation();

    public void setOperation(OperationPrototype var1);

    public Integer getQueueLength();

    public void setQueueLength(Integer var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();
}

