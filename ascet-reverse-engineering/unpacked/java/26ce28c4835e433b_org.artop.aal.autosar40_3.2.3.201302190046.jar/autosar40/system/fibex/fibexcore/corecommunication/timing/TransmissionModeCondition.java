/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.commonstructure.filter.DataFilter;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;

public interface TransmissionModeCondition
extends ARObject {
    public TransmissionModeDeclaration getTransmissionModeDeclaration();

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration var1);

    public DataFilter getDataFilter();

    public void setDataFilter(DataFilter var1);

    public ISignalToIPduMapping getISignalInIPdu();

    public void setISignalInIPdu(ISignalToIPduMapping var1);
}

