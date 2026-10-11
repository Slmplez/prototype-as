/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;

public interface ISignalIPduRefConditional
extends ARObject {
    public ISignalIPduGroup getISignalIPduGroup();

    public void setISignalIPduGroup(ISignalIPduGroup var1);

    public ISignalIPdu getISignalIPdu();

    public void setISignalIPdu(ISignalIPdu var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

