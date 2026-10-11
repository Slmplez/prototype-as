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
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl;

import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesFactory;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefMsr;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.SwCalprmRefProxyImpl;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.SwVariableRefMsrImpl;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.swCalprmRefImpl;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.swCalprmRef;
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
            DatadictionaryproxiesFactory theDatadictionaryproxiesFactory = (DatadictionaryproxiesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/dp");
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
                return this.createswCalprmRef();
            }
            case 1: {
                return this.createSwCalprmRefProxy();
            }
            case 2: {
                return this.createSwVariableRefMsr();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public swCalprmRef createswCalprmRef() {
        swCalprmRefImpl swCalprmRef2 = new swCalprmRefImpl();
        return swCalprmRef2;
    }

    public SwCalprmRefProxy createSwCalprmRefProxy() {
        SwCalprmRefProxyImpl swCalprmRefProxy = new SwCalprmRefProxyImpl();
        return swCalprmRefProxy;
    }

    public SwVariableRefMsr createSwVariableRefMsr() {
        SwVariableRefMsrImpl swVariableRefMsr = new SwVariableRefMsrImpl();
        return swVariableRefMsr;
    }

    public DatadictionaryproxiesPackage getDatadictionaryproxiesPackage() {
        return (DatadictionaryproxiesPackage)this.getEPackage();
    }

    @Deprecated
    public static DatadictionaryproxiesPackage getPackage() {
        return DatadictionaryproxiesPackage.eINSTANCE;
    }
}

