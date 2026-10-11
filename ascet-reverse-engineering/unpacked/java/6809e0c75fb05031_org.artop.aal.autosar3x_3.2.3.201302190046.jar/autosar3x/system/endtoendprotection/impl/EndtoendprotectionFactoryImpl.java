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
package autosar3x.system.endtoendprotection.impl;

import autosar3x.system.endtoendprotection.EndToEndProtectionISignalIPdu;
import autosar3x.system.endtoendprotection.EndtoendprotectionFactory;
import autosar3x.system.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.system.endtoendprotection.impl.EndToEndProtectionISignalIPduImpl;
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
            EndtoendprotectionFactory theEndtoendprotectionFactory = (EndtoendprotectionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/etep");
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
                return this.createEndToEndProtectionISignalIPdu();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public EndToEndProtectionISignalIPdu createEndToEndProtectionISignalIPdu() {
        EndToEndProtectionISignalIPduImpl endToEndProtectionISignalIPdu = new EndToEndProtectionISignalIPduImpl();
        return endToEndProtectionISignalIPdu;
    }

    public EndtoendprotectionPackage getEndtoendprotectionPackage() {
        return (EndtoendprotectionPackage)this.getEPackage();
    }

    @Deprecated
    public static EndtoendprotectionPackage getPackage() {
        return EndtoendprotectionPackage.eINSTANCE;
    }
}

