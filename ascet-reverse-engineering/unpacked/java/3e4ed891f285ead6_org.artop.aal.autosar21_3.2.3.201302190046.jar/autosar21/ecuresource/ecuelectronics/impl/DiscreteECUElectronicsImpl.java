/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecuresource.ecuelectronics.impl;

import autosar21.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.impl.ECUElectronicsImpl;
import org.eclipse.emf.ecore.EClass;

public class DiscreteECUElectronicsImpl
extends ECUElectronicsImpl
implements DiscreteECUElectronics {
    protected DiscreteECUElectronicsImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.DISCRETE_ECU_ELECTRONICS;
    }
}

