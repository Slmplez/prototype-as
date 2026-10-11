/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents;

import autosar40.commonstructure.modedeclaration.ModeActivationKind;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcModeSwitchEvent
extends RTEEvent,
GSwcModeSwitchEvent {
    public ModeActivationKind getActivation();

    public void setActivation(ModeActivationKind var1);

    public void unsetActivation();

    public boolean isSetActivation();

    public EList<RModeInAtomicSwcInstanceRef> getModes();
}

