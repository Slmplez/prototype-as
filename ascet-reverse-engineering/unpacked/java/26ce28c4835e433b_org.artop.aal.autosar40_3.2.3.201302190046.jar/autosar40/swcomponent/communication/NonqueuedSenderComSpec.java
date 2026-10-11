/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec
 */
package autosar40.swcomponent.communication;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.communication.SenderComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec;

public interface NonqueuedSenderComSpec
extends SenderComSpec,
GNonqueuedSenderComSpec {
    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);
}

