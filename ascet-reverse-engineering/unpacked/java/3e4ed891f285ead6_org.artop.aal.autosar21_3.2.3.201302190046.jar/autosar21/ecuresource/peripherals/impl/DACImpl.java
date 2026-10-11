/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.DAC;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.AnalogueIOImpl;
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

