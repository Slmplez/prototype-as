/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.varianthandling.FloatValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.impl.AttributeValueVariationPointImpl;
import org.eclipse.emf.ecore.EClass;

public class FloatValueVariationPointImpl
extends AttributeValueVariationPointImpl
implements FloatValueVariationPoint {
    protected FloatValueVariationPointImpl() {
    }

    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.FLOAT_VALUE_VARIATION_POINT;
    }
}

