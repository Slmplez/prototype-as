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
package autosar21.swcomponent.measurementandcalibration.byteorder.impl;

import autosar21.swcomponent.measurementandcalibration.byteorder.ByteOrder;
import autosar21.swcomponent.measurementandcalibration.byteorder.ByteorderFactory;
import autosar21.swcomponent.measurementandcalibration.byteorder.ByteorderPackage;
import autosar21.swcomponent.measurementandcalibration.byteorder.impl.ByteOrderImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ByteorderFactoryImpl
extends EFactoryImpl
implements ByteorderFactory {
    public static ByteorderFactory init() {
        try {
            ByteorderFactory theByteorderFactory = (ByteorderFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/bo");
            if (theByteorderFactory != null) {
                return theByteorderFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ByteorderFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createByteOrder();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ByteOrder createByteOrder() {
        ByteOrderImpl byteOrder = new ByteOrderImpl();
        return byteOrder;
    }

    public ByteorderPackage getByteorderPackage() {
        return (ByteorderPackage)this.getEPackage();
    }

    @Deprecated
    public static ByteorderPackage getPackage() {
        return ByteorderPackage.eINSTANCE;
    }
}

