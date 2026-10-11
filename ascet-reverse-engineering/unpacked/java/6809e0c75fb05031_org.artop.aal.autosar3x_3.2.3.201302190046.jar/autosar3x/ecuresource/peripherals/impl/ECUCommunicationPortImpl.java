/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.peripherals.ECUCommunicationPort;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.CommunicationHWPortImpl;
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

