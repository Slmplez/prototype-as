/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagEventDebounceMonitorInternal;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagEventDebounceAlgorithmImpl;
import org.eclipse.emf.ecore.EClass;

public class DiagEventDebounceMonitorInternalImpl
extends DiagEventDebounceAlgorithmImpl
implements DiagEventDebounceMonitorInternal {
    protected DiagEventDebounceMonitorInternalImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAG_EVENT_DEBOUNCE_MONITOR_INTERNAL;
    }
}

