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
package autosar40.commonstructure.swclass.impl;

import autosar40.commonstructure.swclass.SwVariableImpl;
import autosar40.commonstructure.swclass.SwclassFactory;
import autosar40.commonstructure.swclass.SwclassPackage;
import autosar40.commonstructure.swclass.impl.SwVariableImplImpl;
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
            SwclassFactory theSwclassFactory = (SwclassFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/sclass");
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
                return this.createSwVariableImpl();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwVariableImpl createSwVariableImpl() {
        SwVariableImplImpl swVariableImpl = new SwVariableImplImpl();
        return swVariableImpl;
    }

    public SwclassPackage getSwclassPackage() {
        return (SwclassPackage)this.getEPackage();
    }

    @Deprecated
    public static SwclassPackage getPackage() {
        return SwclassPackage.eINSTANCE;
    }
}

