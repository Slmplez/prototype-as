/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar40.swcomponent.swcinternalbehavior.rteevents.BackgroundEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import org.eclipse.emf.ecore.EClass;

public class BackgroundEventImpl
extends RTEEventImpl
implements BackgroundEvent {
    protected BackgroundEventImpl() {
    }

    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.BACKGROUND_EVENT;
    }
}

