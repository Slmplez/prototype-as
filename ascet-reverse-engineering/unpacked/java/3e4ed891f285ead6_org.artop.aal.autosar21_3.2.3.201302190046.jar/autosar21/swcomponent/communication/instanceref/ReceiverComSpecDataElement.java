/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.ReceiverComSpec;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.portinterface.DataElementPrototype;

public interface ReceiverComSpecDataElement
extends ARObject {
    public ReceiverComSpec getReceiverComSpec();

    public void setReceiverComSpec(ReceiverComSpec var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

