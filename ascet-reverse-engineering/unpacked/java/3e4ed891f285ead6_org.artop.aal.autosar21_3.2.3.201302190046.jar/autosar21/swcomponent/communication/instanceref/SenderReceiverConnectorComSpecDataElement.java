/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.SenderReceiverConnectorComSpec;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.portinterface.DataElementPrototype;

public interface SenderReceiverConnectorComSpecDataElement
extends ARObject {
    public SenderReceiverConnectorComSpec getSenderReceiverConnectorComSpec();

    public void setSenderReceiverConnectorComSpec(SenderReceiverConnectorComSpec var1);

    public ComponentPrototype getComponentPrototype();

    public void setComponentPrototype(ComponentPrototype var1);

    public RPortPrototype getRPortPrototype();

    public void setRPortPrototype(RPortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

