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
package autosar3x.commonstructure.datadictionaryproxies.impl;

import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesFactory;
import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar3x.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar3x.commonstructure.datadictionaryproxies.impl.SwCalprmRefProxyImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DatadictionaryproxiesFactoryImpl
extends EFactoryImpl
implements DatadictionaryproxiesFactory {
    public static DatadictionaryproxiesFactory init() {
        try {
            DatadictionaryproxiesFactory theDatadictionaryproxiesFactory = (DatadictionaryproxiesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/dp");
            if (theDatadictionaryproxiesFactory != null) {
                return theDatadictionaryproxiesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DatadictionaryproxiesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwCalprmRefProxy();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwCalprmRefProxy createSwCalprmRefProxy() {
        SwCalprmRefProxyImpl swCalprmRefProxy = new SwCalprmRefProxyImpl();
        return swCalprmRefProxy;
    }

    public DatadictionaryproxiesPackage getDatadictionaryproxiesPackage() {
        return (DatadictionaryproxiesPackage)this.getEPackage();
    }

    @Deprecated
    public static DatadictionaryproxiesPackage getPackage() {
        return DatadictionaryproxiesPackage.eINSTANCE;
    }
}

