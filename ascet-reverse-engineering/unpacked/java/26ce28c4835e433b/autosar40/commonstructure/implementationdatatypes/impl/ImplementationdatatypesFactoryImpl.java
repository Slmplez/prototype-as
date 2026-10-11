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
package autosar40.commonstructure.implementationdatatypes.impl;

import autosar40.commonstructure.implementationdatatypes.ArraySizeSemanticsEnum;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesFactory;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.commonstructure.implementationdatatypes.impl.ImplementationDataTypeElementImpl;
import autosar40.commonstructure.implementationdatatypes.impl.ImplementationDataTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ImplementationdatatypesFactoryImpl
extends EFactoryImpl
implements ImplementationdatatypesFactory {
    public static ImplementationdatatypesFactory init() {
        try {
            ImplementationdatatypesFactory theImplementationdatatypesFactory = (ImplementationdatatypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/idt");
            if (theImplementationdatatypesFactory != null) {
                return theImplementationdatatypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ImplementationdatatypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createImplementationDataType();
            }
            case 1: {
                return this.createImplementationDataTypeElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.createArraySizeSemanticsEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 2: {
                return this.convertArraySizeSemanticsEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ImplementationDataType createImplementationDataType() {
        ImplementationDataTypeImpl implementationDataType = new ImplementationDataTypeImpl();
        return implementationDataType;
    }

    public ImplementationDataTypeElement createImplementationDataTypeElement() {
        ImplementationDataTypeElementImpl implementationDataTypeElement = new ImplementationDataTypeElementImpl();
        return implementationDataTypeElement;
    }

    public ArraySizeSemanticsEnum createArraySizeSemanticsEnumFromString(EDataType eDataType, String initialValue) {
        ArraySizeSemanticsEnum result = ArraySizeSemanticsEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertArraySizeSemanticsEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ImplementationdatatypesPackage getImplementationdatatypesPackage() {
        return (ImplementationdatatypesPackage)this.getEPackage();
    }

    @Deprecated
    public static ImplementationdatatypesPackage getPackage() {
        return ImplementationdatatypesPackage.eINSTANCE;
    }
}

