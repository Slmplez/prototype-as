/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.communication.instanceref;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.SenderComSpec;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.portinterface.DataElementPrototype;

public interface SenderComSpecDataElement
extends ARObject {
    public SenderComSpec getSenderComSpec();

    public void setSenderComSpec(SenderComSpec var1);

    public PPortPrototype getPPortPrototype();

    public void setPPortPrototype(PPortPrototype var1);

    public DataElementPrototype getDataElementPrototype();

    public void setDataElementPrototype(DataElementPrototype var1);
}

