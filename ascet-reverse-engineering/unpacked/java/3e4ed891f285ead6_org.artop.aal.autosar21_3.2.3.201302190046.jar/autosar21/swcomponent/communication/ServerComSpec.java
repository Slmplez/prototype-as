/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GServerComSpec
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.PPortComSpec;
import autosar21.swcomponent.communication.instanceref.ServerComSpecOperation;
import gautosar.gswcomponents.gcommunication.GServerComSpec;

public interface ServerComSpec
extends PPortComSpec,
GServerComSpec {
    public ServerComSpecOperation getOperation();

    public void setOperation(ServerComSpecOperation var1);

    public Integer getQueueLength();

    public void setQueueLength(Integer var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();
}

