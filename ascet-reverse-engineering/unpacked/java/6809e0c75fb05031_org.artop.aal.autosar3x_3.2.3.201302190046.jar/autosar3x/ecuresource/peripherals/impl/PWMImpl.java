/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.peripherals.PWM;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.PulseWidthPeripheralImpl;
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

