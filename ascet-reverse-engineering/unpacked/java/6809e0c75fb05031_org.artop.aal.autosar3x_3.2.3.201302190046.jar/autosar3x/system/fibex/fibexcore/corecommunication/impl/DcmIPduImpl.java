/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import org.eclipse.emf.ecore.EClass;

public class DcmIPduImpl
extends IPduImpl
implements DcmIPdu {
    protected DcmIPduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.DCM_IPDU;
    }
}

