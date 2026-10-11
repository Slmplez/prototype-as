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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TDEventComplex;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TdeventcomplexFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TdeventcomplexPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.impl.TDEventComplexImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TdeventcomplexFactoryImpl
extends EFactoryImpl
implements TdeventcomplexFactory {
    public static TdeventcomplexFactory init() {
        try {
            TdeventcomplexFactory theTdeventcomplexFactory = (TdeventcomplexFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecomplex");
            if (theTdeventcomplexFactory != null) {
                return theTdeventcomplexFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TdeventcomplexFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createTDEventComplex();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public TDEventComplex createTDEventComplex() {
        TDEventComplexImpl tdEventComplex = new TDEventComplexImpl();
        return tdEventComplex;
    }

    public TdeventcomplexPackage getTdeventcomplexPackage() {
        return (TdeventcomplexPackage)this.getEPackage();
    }

    @Deprecated
    public static TdeventcomplexPackage getPackage() {
        return TdeventcomplexPackage.eINSTANCE;
    }
}

