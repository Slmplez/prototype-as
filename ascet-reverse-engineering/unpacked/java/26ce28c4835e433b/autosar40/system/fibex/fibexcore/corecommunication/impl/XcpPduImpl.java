/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.XcpPdu;
import autosar40.system.fibex.fibexcore.corecommunication.impl.PduImpl;
import org.eclipse.emf.ecore.EClass;

public class XcpPduImpl
extends PduImpl
implements XcpPdu {
    protected XcpPduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.XCP_PDU;
    }
}

