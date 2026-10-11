/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GClientComSpec
 */
package autosar40.swcomponent.communication;

import autosar40.swcomponent.communication.RPortComSpec;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import gautosar.gswcomponents.gcommunication.GClientComSpec;

public interface ClientComSpec
extends RPortComSpec,
GClientComSpec {
    public ClientServerOperation getOperation();

    public void setOperation(ClientServerOperation var1);
}

