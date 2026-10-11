/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.endtoendprotection;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignal;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;

public interface EndToEndProtectionISignalIPdu
extends ARObject {
    public EndToEndProtection getEndToEndProtection();

    public void setEndToEndProtection(EndToEndProtection var1);

    public Integer getDataOffset();

    public void setDataOffset(Integer var1);

    public void unsetDataOffset();

    public boolean isSetDataOffset();

    public ISignal getISignalGroup();

    public void setISignalGroup(ISignal var1);

    public SignalIPdu getISignalIPdu();

    public void setISignalIPdu(SignalIPdu var1);
}

