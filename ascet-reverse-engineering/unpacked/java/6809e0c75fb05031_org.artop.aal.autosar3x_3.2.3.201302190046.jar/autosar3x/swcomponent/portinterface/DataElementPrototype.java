/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 */
package autosar3x.swcomponent.portinterface;

import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import autosar3x.swcomponent.portinterface.SenderReceiverInterface;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;

public interface DataElementPrototype
extends DataPrototype,
GVariableDataPrototype {
    public SenderReceiverInterface getSenderReceiverInterface();

    public void setSenderReceiverInterface(SenderReceiverInterface var1);

    public Boolean getIsQueued();

    public void setIsQueued(Boolean var1);

    public void unsetIsQueued();

    public boolean isSetIsQueued();
}

