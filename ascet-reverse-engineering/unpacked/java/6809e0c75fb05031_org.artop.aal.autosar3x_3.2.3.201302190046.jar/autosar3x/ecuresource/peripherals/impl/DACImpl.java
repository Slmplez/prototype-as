/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.peripherals.DAC;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.AnalogueIOImpl;
import org.eclipse.emf.ecore.EClass;

public class DACImpl
extends AnalogueIOImpl
implements DAC {
    protected DACImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.DAC;
    }
}

