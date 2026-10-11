/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource.peripherals;

import autosar21.ecuresource.peripherals.CommunicationSpeed;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommunicationSpeedList
extends CommunicationSpeed {
    public EList<Integer> getSpeeds();

    public void unsetSpeeds();

    public boolean isSetSpeeds();
}

