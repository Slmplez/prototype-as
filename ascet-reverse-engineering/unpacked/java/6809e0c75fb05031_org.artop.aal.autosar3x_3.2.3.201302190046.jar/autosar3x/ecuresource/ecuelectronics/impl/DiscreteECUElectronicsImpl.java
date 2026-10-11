/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.impl.ECUElectronicsImpl;
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

