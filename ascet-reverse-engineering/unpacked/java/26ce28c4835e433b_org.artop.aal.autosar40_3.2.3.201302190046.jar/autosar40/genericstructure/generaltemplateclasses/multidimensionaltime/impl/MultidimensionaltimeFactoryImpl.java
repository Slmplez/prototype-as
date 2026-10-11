/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.impl;

import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimeFactory;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimePackage;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.impl.MultidimensionalTimeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MultidimensionaltimeFactoryImpl
extends EFactoryImpl
implements MultidimensionaltimeFactory {
    public static MultidimensionaltimeFactory init() {
        try {
            MultidimensionaltimeFactory theMultidimensionaltimeFactory = (MultidimensionaltimeFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/mt");
            if (theMultidimensionaltimeFactory != null) {
                return theMultidimensionaltimeFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MultidimensionaltimeFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMultidimensionalTime();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.createCseCodeTypeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 1: {
                return this.convertCseCodeTypeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public MultidimensionalTime createMultidimensionalTime() {
        MultidimensionalTimeImpl multidimensionalTime = new MultidimensionalTimeImpl();
        return multidimensionalTime;
    }

    public Integer createCseCodeTypeFromString(EDataType eDataType, String initialValue) {
        return (Integer)super.createFromString(eDataType, initialValue);
    }

    public String convertCseCodeTypeToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public MultidimensionaltimePackage getMultidimensionaltimePackage() {
        return (MultidimensionaltimePackage)this.getEPackage();
    }

    @Deprecated
    public static MultidimensionaltimePackage getPackage() {
        return MultidimensionaltimePackage.eINSTANCE;
    }
}

