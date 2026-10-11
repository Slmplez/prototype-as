/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagnosticEventManagerNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import org.eclipse.emf.ecore.EClass;

public class DiagnosticEventManagerNeedsImpl
extends DiagnosticCapabilityElementImpl
implements DiagnosticEventManagerNeeds {
    protected DiagnosticEventManagerNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAGNOSTIC_EVENT_MANAGER_NEEDS;
    }
}

