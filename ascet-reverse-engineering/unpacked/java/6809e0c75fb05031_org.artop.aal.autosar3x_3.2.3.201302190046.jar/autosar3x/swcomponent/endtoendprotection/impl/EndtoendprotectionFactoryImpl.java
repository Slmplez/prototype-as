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
package autosar3x.swcomponent.endtoendprotection.impl;

import autosar3x.swcomponent.endtoendprotection.EndToEndDescription;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype_dataElement;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionFactory;
import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.swcomponent.endtoendprotection.impl.EndToEndDescriptionImpl;
import autosar3x.swcomponent.endtoendprotection.impl.EndToEndProtectionDataElementPrototypeImpl;
import autosar3x.swcomponent.endtoendprotection.impl.EndToEndProtectionDataElementPrototype_dataElementImpl;
import autosar3x.swcomponent.endtoendprotection.impl.EndToEndProtectionImpl;
import autosar3x.swcomponent.endtoendprotection.impl.EndToEndProtectionSetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EndtoendprotectionFactoryImpl
extends EFactoryImpl
implements EndtoendprotectionFactory {
    public static EndtoendprotectionFactory init() {
        try {
            EndtoendprotectionFactory theEndtoendprotectionFactory = (EndtoendprotectionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/etep");
            if (theEndtoendprotectionFactory != null) {
                return theEndtoendprotectionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EndtoendprotectionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createEndToEndDescription();
            }
            case 1: {
                return this.createEndToEndProtection();
            }
            case 2: {
                return this.createEndToEndProtectionDataElementPrototype();
            }
            case 3: {
                return this.createEndToEndProtectionDataElementPrototype_dataElement();
            }
            case 4: {
                return this.createEndToEndProtectionSet();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public EndToEndDescription createEndToEndDescription() {
        EndToEndDescriptionImpl endToEndDescription = new EndToEndDescriptionImpl();
        return endToEndDescription;
    }

    public EndToEndProtection createEndToEndProtection() {
        EndToEndProtectionImpl endToEndProtection = new EndToEndProtectionImpl();
        return endToEndProtection;
    }

    public EndToEndProtectionDataElementPrototype createEndToEndProtectionDataElementPrototype() {
        EndToEndProtectionDataElementPrototypeImpl endToEndProtectionDataElementPrototype = new EndToEndProtectionDataElementPrototypeImpl();
        return endToEndProtectionDataElementPrototype;
    }

    public EndToEndProtectionDataElementPrototype_dataElement createEndToEndProtectionDataElementPrototype_dataElement() {
        EndToEndProtectionDataElementPrototype_dataElementImpl endToEndProtectionDataElementPrototype_dataElement = new EndToEndProtectionDataElementPrototype_dataElementImpl();
        return endToEndProtectionDataElementPrototype_dataElement;
    }

    public EndToEndProtectionSet createEndToEndProtectionSet() {
        EndToEndProtectionSetImpl endToEndProtectionSet = new EndToEndProtectionSetImpl();
        return endToEndProtectionSet;
    }

    public EndtoendprotectionPackage getEndtoendprotectionPackage() {
        return (EndtoendprotectionPackage)this.getEPackage();
    }

    @Deprecated
    public static EndtoendprotectionPackage getPackage() {
        return EndtoendprotectionPackage.eINSTANCE;
    }
}

