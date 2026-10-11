/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.SenderComSpec;
import autosar21.swcomponent.datatype.constants.ValueSpecification;
import gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec;

public interface UnqueuedSenderComSpec
extends SenderComSpec,
GNonqueuedSenderComSpec {
    public Boolean getCanInvalidate();

    public void setCanInvalidate(Boolean var1);

    public void unsetCanInvalidate();

    public boolean isSetCanInvalidate();

    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);
}

