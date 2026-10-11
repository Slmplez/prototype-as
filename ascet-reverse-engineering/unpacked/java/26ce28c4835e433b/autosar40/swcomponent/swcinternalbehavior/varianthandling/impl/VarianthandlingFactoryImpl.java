/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.swcomponent.swcinternalbehavior.varianthandling.impl;

import autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingFactory;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.VariationPointProxy;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VariationPointProxyImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class VarianthandlingFactoryImpl
extends EFactoryImpl
implements VarianthandlingFactory {
    public static VarianthandlingFactory init() {
        try {
            VarianthandlingFactory theVarianthandlingFactory = (VarianthandlingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/vh");
            if (theVarianthandlingFactory != null) {
                return theVarianthandlingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new VarianthandlingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createVariationPointProxy();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public VariationPointProxy createVariationPointProxy() {
        VariationPointProxyImpl variationPointProxy = new VariationPointProxyImpl();
        return variationPointProxy;
    }

    public VarianthandlingPackage getVarianthandlingPackage() {
        return (VarianthandlingPackage)this.getEPackage();
    }

    @Deprecated
    public static VarianthandlingPackage getPackage() {
        return VarianthandlingPackage.eINSTANCE;
    }
}

