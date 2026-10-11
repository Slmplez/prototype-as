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
package autosar40.swcomponent.softwarecomponentdocumentation.impl;

import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationFactory;
import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationPackage;
import autosar40.swcomponent.softwarecomponentdocumentation.SwComponentDocumentation;
import autosar40.swcomponent.softwarecomponentdocumentation.impl.SwComponentDocumentationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SoftwarecomponentdocumentationFactoryImpl
extends EFactoryImpl
implements SoftwarecomponentdocumentationFactory {
    public static SoftwarecomponentdocumentationFactory init() {
        try {
            SoftwarecomponentdocumentationFactory theSoftwarecomponentdocumentationFactory = (SoftwarecomponentdocumentationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/scd");
            if (theSoftwarecomponentdocumentationFactory != null) {
                return theSoftwarecomponentdocumentationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SoftwarecomponentdocumentationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwComponentDocumentation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwComponentDocumentation createSwComponentDocumentation() {
        SwComponentDocumentationImpl swComponentDocumentation = new SwComponentDocumentationImpl();
        return swComponentDocumentation;
    }

    public SoftwarecomponentdocumentationPackage getSoftwarecomponentdocumentationPackage() {
        return (SoftwarecomponentdocumentationPackage)this.getEPackage();
    }

    @Deprecated
    public static SoftwarecomponentdocumentationPackage getPackage() {
        return SoftwarecomponentdocumentationPackage.eINSTANCE;
    }
}

