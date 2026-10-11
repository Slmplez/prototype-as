/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.ECUCommunicationPort;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.CommunicationHWPortImpl;
import org.eclipse.emf.ecore.EClass;

public class ECUCommunicationPortImpl
extends CommunicationHWPortImpl
implements ECUCommunicationPort {
    protected ECUCommunicationPortImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.ECU_COMMUNICATION_PORT;
    }
}

