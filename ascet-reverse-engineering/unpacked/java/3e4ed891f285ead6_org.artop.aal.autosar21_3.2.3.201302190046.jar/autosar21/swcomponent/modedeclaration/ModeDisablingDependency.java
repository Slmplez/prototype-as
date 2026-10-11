/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.modedeclaration;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.modedeclaration.instanceref.ModeDisablingDependencyDependentOnMode;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ModeDisablingDependency
extends ARObject {
    public RTEEvent getRTEEvent();

    public void setRTEEvent(RTEEvent var1);

    public EList<ModeDisablingDependencyDependentOnMode> getDependentOnModes();
}

