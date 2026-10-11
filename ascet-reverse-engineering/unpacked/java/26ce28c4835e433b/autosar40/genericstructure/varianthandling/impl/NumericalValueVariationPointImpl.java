/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.impl.AbstractNumericalVariationPointImpl;
import org.eclipse.emf.ecore.EClass;

public class NumericalValueVariationPointImpl
extends AbstractNumericalVariationPointImpl
implements NumericalValueVariationPoint {
    protected NumericalValueVariationPointImpl() {
    }

    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.NUMERICAL_VALUE_VARIATION_POINT;
    }
}

