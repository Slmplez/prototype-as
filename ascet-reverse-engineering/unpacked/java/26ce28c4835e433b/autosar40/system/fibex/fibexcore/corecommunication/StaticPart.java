/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedPart;

public interface StaticPart
extends MultiplexedPart {
    public MultiplexedIPdu getMultiplexedIPdu();

    public void setMultiplexedIPdu(MultiplexedIPdu var1);

    public ISignalIPdu getIPdu();

    public void setIPdu(ISignalIPdu var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

