/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DynamicPart
extends MultiplexedPart {
    public MultiplexedIPdu getMultiplexedIPdu();

    public void setMultiplexedIPdu(MultiplexedIPdu var1);

    public EList<DynamicPartAlternative> getDynamicPartAlternatives();
}

