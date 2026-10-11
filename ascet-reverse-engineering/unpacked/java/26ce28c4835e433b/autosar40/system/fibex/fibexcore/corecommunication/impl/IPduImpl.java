/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.impl.PduImpl;
import org.eclipse.emf.ecore.EClass;

public class IPduImpl
extends PduImpl
implements IPdu {
    protected IPduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.IPDU;
    }
}

