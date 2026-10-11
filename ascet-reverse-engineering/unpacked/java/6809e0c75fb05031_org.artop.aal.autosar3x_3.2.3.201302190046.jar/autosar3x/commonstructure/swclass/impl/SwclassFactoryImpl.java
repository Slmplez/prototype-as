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
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.swclass.SwCalprmImpl;
import autosar3x.commonstructure.swclass.SwCalprmPrototype;
import autosar3x.commonstructure.swclass.SwClassAttr;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.commonstructure.swclass.SwClassImpl;
import autosar3x.commonstructure.swclass.SwClassInstance;
import autosar3x.commonstructure.swclass.SwClassPrototype;
import autosar3x.commonstructure.swclass.SwServicePrototype;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.commonstructure.swclass.SwVariablePrototype;
import autosar3x.commonstructure.swclass.SwclassFactory;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.commonstructure.swclass.impl.SwCalprmImplImpl;
import autosar3x.commonstructure.swclass.impl.SwCalprmPrototypeImpl;
import autosar3x.commonstructure.swclass.impl.SwClassAttrImpl;
import autosar3x.commonstructure.swclass.impl.SwClassAttrImplImpl;
import autosar3x.commonstructure.swclass.impl.SwClassAttrInstanceImplImpl;
import autosar3x.commonstructure.swclass.impl.SwClassImplImpl;
import autosar3x.commonstructure.swclass.impl.SwClassInstanceImpl;
import autosar3x.commonstructure.swclass.impl.SwClassPrototypeImpl;
import autosar3x.commonstructure.swclass.impl.SwServicePrototypeImpl;
import autosar3x.commonstructure.swclass.impl.SwVariableImplImpl;
import autosar3x.commonstructure.swclass.impl.SwVariablePrototypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SwclassFactoryImpl
extends EFactoryImpl
implements SwclassFactory {
    public static SwclassFactory init() {
        try {
            SwclassFactory theSwclassFactory = (SwclassFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/sc");
            if (theSwclassFactory != null) {
                return theSwclassFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SwclassFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwCalprmImpl();
            }
            case 1: {
                return this.createSwCalprmPrototype();
            }
            case 2: {
                return this.createSwClassAttr();
            }
            case 3: {
                return this.createSwVariablePrototype();
            }
            case 4: {
                return this.createSwClassPrototype();
            }
            case 5: {
                return this.createSwServicePrototype();
            }
            case 6: {
                return this.createSwClassAttrImpl();
            }
            case 7: {
                return this.createSwClassImpl();
            }
            case 8: {
                return this.createSwVariableImpl();
            }
            case 9: {
                return this.createSwClassAttrInstanceImpl();
            }
            case 10: {
                return this.createSwClassInstance();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwCalprmImpl createSwCalprmImpl() {
        SwCalprmImplImpl swCalprmImpl = new SwCalprmImplImpl();
        return swCalprmImpl;
    }

    public SwCalprmPrototype createSwCalprmPrototype() {
        SwCalprmPrototypeImpl swCalprmPrototype = new SwCalprmPrototypeImpl();
        return swCalprmPrototype;
    }

    public SwClassAttr createSwClassAttr() {
        SwClassAttrImpl swClassAttr = new SwClassAttrImpl();
        return swClassAttr;
    }

    public SwVariablePrototype createSwVariablePrototype() {
        SwVariablePrototypeImpl swVariablePrototype = new SwVariablePrototypeImpl();
        return swVariablePrototype;
    }

    public SwClassPrototype createSwClassPrototype() {
        SwClassPrototypeImpl swClassPrototype = new SwClassPrototypeImpl();
        return swClassPrototype;
    }

    public SwServicePrototype createSwServicePrototype() {
        SwServicePrototypeImpl swServicePrototype = new SwServicePrototypeImpl();
        return swServicePrototype;
    }

    public autosar3x.commonstructure.swclass.SwClassAttrImpl createSwClassAttrImpl() {
        SwClassAttrImplImpl swClassAttrImpl = new SwClassAttrImplImpl();
        return swClassAttrImpl;
    }

    public SwClassImpl createSwClassImpl() {
        SwClassImplImpl swClassImpl = new SwClassImplImpl();
        return swClassImpl;
    }

    public SwVariableImpl createSwVariableImpl() {
        SwVariableImplImpl swVariableImpl = new SwVariableImplImpl();
        return swVariableImpl;
    }

    public SwClassAttrInstanceImpl createSwClassAttrInstanceImpl() {
        SwClassAttrInstanceImplImpl swClassAttrInstanceImpl = new SwClassAttrInstanceImplImpl();
        return swClassAttrInstanceImpl;
    }

    public SwClassInstance createSwClassInstance() {
        SwClassInstanceImpl swClassInstance = new SwClassInstanceImpl();
        return swClassInstance;
    }

    public SwclassPackage getSwclassPackage() {
        return (SwclassPackage)this.getEPackage();
    }

    @Deprecated
    public static SwclassPackage getPackage() {
        return SwclassPackage.eINSTANCE;
    }
}

