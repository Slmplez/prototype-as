/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.modedeclaration;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.modedeclaration.instanceref.ModeDisablingDependencyDependentOnMode;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
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

