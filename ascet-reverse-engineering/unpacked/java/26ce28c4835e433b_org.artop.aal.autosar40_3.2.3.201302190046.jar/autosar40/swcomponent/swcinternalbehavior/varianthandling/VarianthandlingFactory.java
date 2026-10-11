/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.varianthandling;

import autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VariationPointProxy;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface VarianthandlingFactory
extends EFactory {
    public static final VarianthandlingFactory eINSTANCE = VarianthandlingFactoryImpl.init();

    public VariationPointProxy createVariationPointProxy();

    public VarianthandlingPackage getVarianthandlingPackage();
}

