/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GReceiverComSpec
 */
package autosar21.swcomponent.communication;

import autosar21.swcomponent.communication.RPortComSpec;
import autosar21.swcomponent.communication.filter.DataFilter;
import autosar21.swcomponent.communication.instanceref.ReceiverComSpecDataElement;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;

public interface ReceiverComSpec
extends RPortComSpec,
GReceiverComSpec {
    public ReceiverComSpecDataElement getDataElement();

    public void setDataElement(ReceiverComSpecDataElement var1);

    public DataFilter getFilter();

    public void setFilter(DataFilter var1);
}

