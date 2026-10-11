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
package autosar21.swcomponent.internalbehavior.dataelements.impl;

import autosar21.swcomponent.internalbehavior.dataelements.DataReadAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataReceivePoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataSendPoint;
import autosar21.swcomponent.internalbehavior.dataelements.DataWriteAccess;
import autosar21.swcomponent.internalbehavior.dataelements.DataelementsFactory;
import autosar21.swcomponent.internalbehavior.dataelements.DataelementsPackage;
import autosar21.swcomponent.internalbehavior.dataelements.impl.DataReadAccessImpl;
import autosar21.swcomponent.internalbehavior.dataelements.impl.DataReceivePointImpl;
import autosar21.swcomponent.internalbehavior.dataelements.impl.DataSendPointImpl;
import autosar21.swcomponent.internalbehavior.dataelements.impl.DataWriteAccessImpl;
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
            DataelementsFactory theDataelementsFactory = (DataelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/de");
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
                return this.createDataSendPoint();
            }
            case 3: {
                return this.createDataWriteAccess();
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

    public DataSendPoint createDataSendPoint() {
        DataSendPointImpl dataSendPoint = new DataSendPointImpl();
        return dataSendPoint;
    }

    public DataWriteAccess createDataWriteAccess() {
        DataWriteAccessImpl dataWriteAccess = new DataWriteAccessImpl();
        return dataWriteAccess;
    }

    public DataelementsPackage getDataelementsPackage() {
        return (DataelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static DataelementsPackage getPackage() {
        return DataelementsPackage.eINSTANCE;
    }
}

