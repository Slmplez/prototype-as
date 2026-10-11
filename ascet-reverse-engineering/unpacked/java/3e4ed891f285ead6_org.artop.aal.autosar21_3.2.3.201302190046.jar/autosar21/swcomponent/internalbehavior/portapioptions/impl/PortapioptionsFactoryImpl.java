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
package autosar21.swcomponent.internalbehavior.portapioptions.impl;

import autosar21.swcomponent.internalbehavior.portapioptions.PortAPIOption;
import autosar21.swcomponent.internalbehavior.portapioptions.PortapioptionsFactory;
import autosar21.swcomponent.internalbehavior.portapioptions.PortapioptionsPackage;
import autosar21.swcomponent.internalbehavior.portapioptions.impl.PortAPIOptionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PortapioptionsFactoryImpl
extends EFactoryImpl
implements PortapioptionsFactory {
    public static PortapioptionsFactory init() {
        try {
            PortapioptionsFactory thePortapioptionsFactory = (PortapioptionsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/papio");
            if (thePortapioptionsFactory != null) {
                return thePortapioptionsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PortapioptionsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createPortAPIOption();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PortAPIOption createPortAPIOption() {
        PortAPIOptionImpl portAPIOption = new PortAPIOptionImpl();
        return portAPIOption;
    }

    public PortapioptionsPackage getPortapioptionsPackage() {
        return (PortapioptionsPackage)this.getEPackage();
    }

    @Deprecated
    public static PortapioptionsPackage getPackage() {
        return PortapioptionsPackage.eINSTANCE;
    }
}

