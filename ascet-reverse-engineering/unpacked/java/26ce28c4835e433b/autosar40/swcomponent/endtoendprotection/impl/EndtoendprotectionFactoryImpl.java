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
package autosar40.swcomponent.endtoendprotection.impl;

import autosar40.swcomponent.endtoendprotection.EndToEndDescription;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionVariablePrototype;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionFactory;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar40.swcomponent.endtoendprotection.impl.EndToEndDescriptionImpl;
import autosar40.swcomponent.endtoendprotection.impl.EndToEndProtectionImpl;
import autosar40.swcomponent.endtoendprotection.impl.EndToEndProtectionSetImpl;
import autosar40.swcomponent.endtoendprotection.impl.EndToEndProtectionVariablePrototypeImpl;
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
            EndtoendprotectionFactory theEndtoendprotectionFactory = (EndtoendprotectionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/etep");
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
                return this.createEndToEndProtectionVariablePrototype();
            }
            case 3: {
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

    public EndToEndProtectionVariablePrototype createEndToEndProtectionVariablePrototype() {
        EndToEndProtectionVariablePrototypeImpl endToEndProtectionVariablePrototype = new EndToEndProtectionVariablePrototypeImpl();
        return endToEndProtectionVariablePrototype;
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

