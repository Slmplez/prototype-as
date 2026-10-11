/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GClientComSpec
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.RPortComSpec;
import autosar21.swcomponent.communication.instanceref.ClientComSpecOperation;
import gautosar.gswcomponents.gcommunication.GClientComSpec;

public interface ClientComSpec
extends RPortComSpec,
GClientComSpec {
    public ClientComSpecOperation getOperation();

    public void setOperation(ClientComSpecOperation var1);
}

