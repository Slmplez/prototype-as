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
package autosar40.genericstructure.generaltemplateclasses.generalannotation.impl;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationFactory;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GeneralannotationFactoryImpl
extends EFactoryImpl
implements GeneralannotationFactory {
    public static GeneralannotationFactory init() {
        try {
            GeneralannotationFactory theGeneralannotationFactory = (GeneralannotationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ga");
            if (theGeneralannotationFactory != null) {
                return theGeneralannotationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GeneralannotationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GeneralannotationPackage getGeneralannotationPackage() {
        return (GeneralannotationPackage)this.getEPackage();
    }

    @Deprecated
    public static GeneralannotationPackage getPackage() {
        return GeneralannotationPackage.eINSTANCE;
    }
}

