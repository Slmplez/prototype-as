/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.communication.HandleOutOfRangeEnum;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;

public interface ISignalProps
extends ARObject {
    public ISignal getISignal();

    public void setISignal(ISignal var1);

    public HandleOutOfRangeEnum getHandleOutOfRange();

    public void setHandleOutOfRange(HandleOutOfRangeEnum var1);

    public void unsetHandleOutOfRange();

    public boolean isSetHandleOutOfRange();
}

