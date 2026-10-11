/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GClientComSpec
 */
package autosar3x.swcomponent.communication;

import autosar3x.swcomponent.communication.RPortComSpec;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import gautosar.gswcomponents.gcommunication.GClientComSpec;

public interface ClientComSpec
extends RPortComSpec,
GClientComSpec {
    public OperationPrototype getOperation();

    public void setOperation(OperationPrototype var1);
}

