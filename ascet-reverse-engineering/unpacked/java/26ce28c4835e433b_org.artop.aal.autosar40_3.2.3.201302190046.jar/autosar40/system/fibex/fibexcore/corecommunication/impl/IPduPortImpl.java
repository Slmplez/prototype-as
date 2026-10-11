/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.IPduPort;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommConnectorPortImpl;
import org.eclipse.emf.ecore.EClass;

public class IPduPortImpl
extends CommConnectorPortImpl
implements IPduPort {
    protected IPduPortImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.IPDU_PORT;
    }
}

