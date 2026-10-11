/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource;

import autosar21.ecuresource.HWConnection;
import autosar21.ecuresource.HWPin;
import autosar21.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PinHWConnection
extends ARObject {
    public HWConnection getHWConnection();

    public void setHWConnection(HWConnection var1);

    public EList<HWPin> getConnectedPins();
}

