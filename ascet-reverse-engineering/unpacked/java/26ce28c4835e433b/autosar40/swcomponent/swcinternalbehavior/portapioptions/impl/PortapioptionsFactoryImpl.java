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
package autosar40.swcomponent.swcinternalbehavior.portapioptions.impl;

import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortDefinedArgumentValue;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsFactory;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.impl.PortAPIOptionImpl;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.impl.PortDefinedArgumentValueImpl;
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
            PortapioptionsFactory thePortapioptionsFactory = (PortapioptionsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/papio");
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
                return this.createPortDefinedArgumentValue();
            }
            case 1: {
                return this.createPortAPIOption();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PortDefinedArgumentValue createPortDefinedArgumentValue() {
        PortDefinedArgumentValueImpl portDefinedArgumentValue = new PortDefinedArgumentValueImpl();
        return portDefinedArgumentValue;
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

