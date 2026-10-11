/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecuresource;

import autosar3x.ecuresource.HWElementContainer;
import autosar3x.ecuresource.PinHWConnection;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
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

