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
package autosar3x.swcomponent.swcinternalbehavior.dataelements.impl;

import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReadAccess;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataReceivePoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataSendPoint;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataWriteAccess;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataelementsFactory;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.impl.DataReadAccessImpl;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.impl.DataReceivePointImpl;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.impl.DataSendPointImpl;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.impl.DataWriteAccessImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DataelementsFactoryImpl
extends EFactoryImpl
implements DataelementsFactory {
    public static DataelementsFactory init() {
        try {
            DataelementsFactory theDataelementsFactory = (DataelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/de");
            if (theDataelementsFactory != null) {
                return theDataelementsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DataelementsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDataReceivePoint();
            }
            case 1: {
                return this.createDataReadAccess();
            }
            case 2: {
                return this.createDataWriteAccess();
            }
            case 3: {
                return this.createDataSendPoint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DataReceivePoint createDataReceivePoint() {
        DataReceivePointImpl dataReceivePoint = new DataReceivePointImpl();
        return dataReceivePoint;
    }

    public DataReadAccess createDataReadAccess() {
        DataReadAccessImpl dataReadAccess = new DataReadAccessImpl();
        return dataReadAccess;
    }

    public DataWriteAccess createDataWriteAccess() {
        DataWriteAccessImpl dataWriteAccess = new DataWriteAccessImpl();
        return dataWriteAccess;
    }

    public DataSendPoint createDataSendPoint() {
        DataSendPointImpl dataSendPoint = new DataSendPointImpl();
        return dataSendPoint;
    }

    public DataelementsPackage getDataelementsPackage() {
        return (DataelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static DataelementsPackage getPackage() {
        return DataelementsPackage.eINSTANCE;
    }
}

