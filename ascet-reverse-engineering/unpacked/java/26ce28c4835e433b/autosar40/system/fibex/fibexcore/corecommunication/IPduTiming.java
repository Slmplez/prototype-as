/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;

public interface IPduTiming
extends ARObject {
    public ISignalIPdu getISignalIPdu();

    public void setISignalIPdu(ISignalIPdu var1);

    public Double getMinimumDelay();

    public void setMinimumDelay(Double var1);

    public void unsetMinimumDelay();

    public boolean isSetMinimumDelay();

    public TransmissionModeDeclaration getTransmissionModeDeclaration();

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

