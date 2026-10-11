/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;
import autosar3x.system.fibex.fibexcore.impl.FibexElementImpl;
import org.eclipse.emf.ecore.EClass;

public class PduImpl
extends FibexElementImpl
implements Pdu {
    protected PduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.PDU;
    }
}

