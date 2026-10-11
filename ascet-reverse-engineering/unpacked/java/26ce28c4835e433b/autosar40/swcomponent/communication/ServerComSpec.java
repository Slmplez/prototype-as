/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GServerComSpec
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.swcomponent.communication;

import autosar40.swcomponent.communication.PPortComSpec;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import gautosar.gswcomponents.gcommunication.GServerComSpec;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface ServerComSpec
extends PPortComSpec,
GServerComSpec {
    public ClientServerOperation getOperation();

    public void setOperation(ClientServerOperation var1);

    public Long getQueueLength();

    public void setQueueLength(Long var1);

    public void unsetQueueLength();

    public boolean isSetQueueLength();

    public PositiveIntegerDatatype getQueueLengthData();

    public void setQueueLengthData(PositiveIntegerDatatype var1);
}

