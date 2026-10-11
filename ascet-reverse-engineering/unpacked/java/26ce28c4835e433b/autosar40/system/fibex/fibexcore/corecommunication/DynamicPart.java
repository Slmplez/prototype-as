/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DynamicPart
extends MultiplexedPart {
    public MultiplexedIPdu getMultiplexedIPdu();

    public void setMultiplexedIPdu(MultiplexedIPdu var1);

    public EList<DynamicPartAlternative> getDynamicPartAlternatives();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

