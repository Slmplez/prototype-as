/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4ethernet.ethernettopology;

import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface EthernetCommunicationControllerContent
extends CommunicationControllerContent {
    public Integer getMaximumReceiveBufferLength();

    public void setMaximumReceiveBufferLength(Integer var1);

    public void unsetMaximumReceiveBufferLength();

    public boolean isSetMaximumReceiveBufferLength();

    public Integer getMaximumTransmitBufferLength();

    public void setMaximumTransmitBufferLength(Integer var1);

    public void unsetMaximumTransmitBufferLength();

    public boolean isSetMaximumTransmitBufferLength();

    public IntegerDatatype getMaximumReceiveBufferLengthData();

    public void setMaximumReceiveBufferLengthData(IntegerDatatype var1);

    public IntegerDatatype getMaximumTransmitBufferLengthData();

    public void setMaximumTransmitBufferLengthData(IntegerDatatype var1);
}

