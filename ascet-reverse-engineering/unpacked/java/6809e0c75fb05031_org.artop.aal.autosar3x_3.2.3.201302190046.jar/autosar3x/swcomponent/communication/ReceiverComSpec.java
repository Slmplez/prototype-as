/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GReceiverComSpec
 */
package autosar3x.swcomponent.communication;

import autosar3x.commonstructure.filter.DataFilter;
import autosar3x.swcomponent.communication.RPortComSpec;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;

public interface ReceiverComSpec
extends RPortComSpec,
GReceiverComSpec {
    public DataElementPrototype getDataElement();

    public void setDataElement(DataElementPrototype var1);

    public DataFilter getFilter();

    public void setFilter(DataFilter var1);

    public Boolean getUsesEndToEndProtection();

    public void setUsesEndToEndProtection(Boolean var1);

    public void unsetUsesEndToEndProtection();

    public boolean isSetUsesEndToEndProtection();
}

