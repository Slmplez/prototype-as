/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.varianthandling.AbstractNumericalVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.impl.AttributeValueVariationPointImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AbstractNumericalVariationPointImpl
extends AttributeValueVariationPointImpl
implements AbstractNumericalVariationPoint {
    protected AbstractNumericalVariationPointImpl() {
    }

    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.ABSTRACT_NUMERICAL_VARIATION_POINT;
    }
}

