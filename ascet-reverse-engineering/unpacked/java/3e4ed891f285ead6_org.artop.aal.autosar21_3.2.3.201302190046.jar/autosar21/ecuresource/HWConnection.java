/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.ecuresource;

import autosar21.ecuresource.HWElementContainer;
import autosar21.ecuresource.PinHWConnection;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HWConnection
extends Identifiable {
    public HWElementContainer getHWElementContainer();

    public void setHWElementContainer(HWElementContainer var1);

    public EList<PinHWConnection> getConnectedPins();
}

