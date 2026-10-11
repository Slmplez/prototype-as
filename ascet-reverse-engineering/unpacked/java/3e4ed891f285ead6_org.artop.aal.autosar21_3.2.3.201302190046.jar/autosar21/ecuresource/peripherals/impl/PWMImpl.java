/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.PWM;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.PulseWidthPeripheralImpl;
import org.eclipse.emf.ecore.EClass;

public class PWMImpl
extends PulseWidthPeripheralImpl
implements PWM {
    protected PWMImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.PWM;
    }
}

