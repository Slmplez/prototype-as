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
package autosar40.genericstructure.documentationonm1.impl;

import autosar40.genericstructure.documentationonm1.Documentation;
import autosar40.genericstructure.documentationonm1.DocumentationContext;
import autosar40.genericstructure.documentationonm1.Documentationonm1Factory;
import autosar40.genericstructure.documentationonm1.Documentationonm1Package;
import autosar40.genericstructure.documentationonm1.impl.DocumentationContextImpl;
import autosar40.genericstructure.documentationonm1.impl.DocumentationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class Documentationonm1FactoryImpl
extends EFactoryImpl
implements Documentationonm1Factory {
    public static Documentationonm1Factory init() {
        try {
            Documentationonm1Factory theDocumentationonm1Factory = (Documentationonm1Factory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/dom");
            if (theDocumentationonm1Factory != null) {
                return theDocumentationonm1Factory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new Documentationonm1FactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDocumentation();
            }
            case 1: {
                return this.createDocumentationContext();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Documentation createDocumentation() {
        DocumentationImpl documentation = new DocumentationImpl();
        return documentation;
    }

    public DocumentationContext createDocumentationContext() {
        DocumentationContextImpl documentationContext = new DocumentationContextImpl();
        return documentationContext;
    }

    public Documentationonm1Package getDocumentationonm1Package() {
        return (Documentationonm1Package)this.getEPackage();
    }

    @Deprecated
    public static Documentationonm1Package getPackage() {
        return Documentationonm1Package.eINSTANCE;
    }
}

