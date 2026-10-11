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
package autosar21.genericstructure.commonpatterns.enumerations.impl;

import autosar21.genericstructure.commonpatterns.enumerations.ByteOrderEnum;
import autosar21.genericstructure.commonpatterns.enumerations.EnumerationsFactory;
import autosar21.genericstructure.commonpatterns.enumerations.EnumerationsPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EnumerationsFactoryImpl
extends EFactoryImpl
implements EnumerationsFactory {
    public static EnumerationsFactory init() {
        try {
            EnumerationsFactory theEnumerationsFactory = (EnumerationsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/e");
            if (theEnumerationsFactory != null) {
                return theEnumerationsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EnumerationsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 0: {
                return this.createByteOrderEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 0: {
                return this.convertByteOrderEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ByteOrderEnum createByteOrderEnumFromString(EDataType eDataType, String initialValue) {
        ByteOrderEnum result = ByteOrderEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertByteOrderEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public EnumerationsPackage getEnumerationsPackage() {
        return (EnumerationsPackage)this.getEPackage();
    }

    @Deprecated
    public static EnumerationsPackage getPackage() {
        return EnumerationsPackage.eINSTANCE;
    }
}

