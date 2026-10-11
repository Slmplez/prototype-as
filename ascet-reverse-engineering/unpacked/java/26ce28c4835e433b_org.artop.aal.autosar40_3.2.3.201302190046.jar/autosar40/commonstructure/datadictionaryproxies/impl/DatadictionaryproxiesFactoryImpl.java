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
package autosar40.commonstructure.datadictionaryproxies.impl;

import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesFactory;
import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar40.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.commonstructure.datadictionaryproxies.impl.SwCalprmRefProxyImpl;
import autosar40.commonstructure.datadictionaryproxies.impl.SwVariableRefProxyImpl;
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
            DatadictionaryproxiesFactory theDatadictionaryproxiesFactory = (DatadictionaryproxiesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/dp");
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
                return this.createSwVariableRefProxy();
            }
            case 1: {
                return this.createSwCalprmRefProxy();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwVariableRefProxy createSwVariableRefProxy() {
        SwVariableRefProxyImpl swVariableRefProxy = new SwVariableRefProxyImpl();
        return swVariableRefProxy;
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

