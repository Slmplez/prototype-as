/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.impl.AttributeValueVariationPointImpl;
import org.eclipse.emf.ecore.EClass;

public class PositiveIntegerValueVariationPointImpl
extends AttributeValueVariationPointImpl
implements PositiveIntegerValueVariationPoint {
    protected PositiveIntegerValueVariationPointImpl() {
    }

    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.POSITIVE_INTEGER_VALUE_VARIATION_POINT;
    }
}

