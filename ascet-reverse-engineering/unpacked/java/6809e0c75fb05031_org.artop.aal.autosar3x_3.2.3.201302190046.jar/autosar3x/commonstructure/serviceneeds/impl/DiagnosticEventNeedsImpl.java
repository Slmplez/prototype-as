/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.ecore.EClass;

public class DiagnosticEventNeedsImpl
extends ServiceNeedsImpl
implements DiagnosticEventNeeds {
    protected DiagnosticEventNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAGNOSTIC_EVENT_NEEDS;
    }
}

