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
package autosar40.commonstructure.systemconstant.impl;

import autosar40.commonstructure.systemconstant.SwSystemconst;
import autosar40.commonstructure.systemconstant.SystemconstantFactory;
import autosar40.commonstructure.systemconstant.SystemconstantPackage;
import autosar40.commonstructure.systemconstant.impl.SwSystemconstImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SystemconstantFactoryImpl
extends EFactoryImpl
implements SystemconstantFactory {
    public static SystemconstantFactory init() {
        try {
            SystemconstantFactory theSystemconstantFactory = (SystemconstantFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/sconstant");
            if (theSystemconstantFactory != null) {
                return theSystemconstantFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SystemconstantFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwSystemconst();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwSystemconst createSwSystemconst() {
        SwSystemconstImpl swSystemconst = new SwSystemconstImpl();
        return swSystemconst;
    }

    public SystemconstantPackage getSystemconstantPackage() {
        return (SystemconstantPackage)this.getEPackage();
    }

    @Deprecated
    public static SystemconstantPackage getPackage() {
        return SystemconstantPackage.eINSTANCE;
    }
}

