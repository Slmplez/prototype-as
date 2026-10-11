/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.DiagnosticCommunicationNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.ecore.EClass;

public class DiagnosticCommunicationNeedsImpl
extends ServiceNeedsImpl
implements DiagnosticCommunicationNeeds {
    protected DiagnosticCommunicationNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAGNOSTIC_COMMUNICATION_NEEDS;
    }
}

