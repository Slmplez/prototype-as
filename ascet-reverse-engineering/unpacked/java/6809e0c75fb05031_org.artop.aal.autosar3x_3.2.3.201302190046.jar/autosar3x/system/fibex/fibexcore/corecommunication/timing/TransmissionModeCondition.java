/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.commonstructure.filter.DataFilter;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;

public interface TransmissionModeCondition
extends ARObject {
    public TransmissionModeDeclaration getTransmissionModeDeclaration();

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration var1);

    public DataFilter getDataFilter();

    public void setDataFilter(DataFilter var1);

    public ISignalToIPduMapping getSignalInIPdu();

    public void setSignalInIPdu(ISignalToIPduMapping var1);
}

