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
package autosar21.swcomponent.datatype.datatypes.impl;

import autosar21.swcomponent.datatype.datatypes.ARLimit;
import autosar21.swcomponent.datatype.datatypes.ArrayElement;
import autosar21.swcomponent.datatype.datatypes.ArrayType;
import autosar21.swcomponent.datatype.datatypes.BooleanType;
import autosar21.swcomponent.datatype.datatypes.CharType;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.datatype.datatypes.Datatype;
import autosar21.swcomponent.datatype.datatypes.DatatypesFactory;
import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.datatypes.IntegerType;
import autosar21.swcomponent.datatype.datatypes.OpaqueType;
import autosar21.swcomponent.datatype.datatypes.RealType;
import autosar21.swcomponent.datatype.datatypes.RealTypeEncodingEnum;
import autosar21.swcomponent.datatype.datatypes.RecordElement;
import autosar21.swcomponent.datatype.datatypes.RecordType;
import autosar21.swcomponent.datatype.datatypes.StringType;
import autosar21.swcomponent.datatype.datatypes.impl.ARLimitImpl;
import autosar21.swcomponent.datatype.datatypes.impl.ArrayElementImpl;
import autosar21.swcomponent.datatype.datatypes.impl.ArrayTypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.BooleanTypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.CharTypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.DatatypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.IntegerTypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.OpaqueTypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.RealTypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.RecordElementImpl;
import autosar21.swcomponent.datatype.datatypes.impl.RecordTypeImpl;
import autosar21.swcomponent.datatype.datatypes.impl.StringTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DatatypesFactoryImpl
extends EFactoryImpl
implements DatatypesFactory {
    public static DatatypesFactory init() {
        try {
            DatatypesFactory theDatatypesFactory = (DatatypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/d/d");
            if (theDatatypesFactory != null) {
                return theDatatypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DatatypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createARLimit();
            }
            case 1: {
                return this.createArrayElement();
            }
            case 2: {
                return this.createBooleanType();
            }
            case 4: {
                return this.createDatatype();
            }
            case 6: {
                return this.createOpaqueType();
            }
            case 8: {
                return this.createRecordElement();
            }
            case 9: {
                return this.createStringType();
            }
            case 10: {
                return this.createIntegerType();
            }
            case 11: {
                return this.createRealType();
            }
            case 12: {
                return this.createCharType();
            }
            case 13: {
                return this.createArrayType();
            }
            case 14: {
                return this.createRecordType();
            }
            case 15: {
                return this.createDataPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 16: {
                return this.createRealTypeEncodingEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 16: {
                return this.convertRealTypeEncodingEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ARLimit createARLimit() {
        ARLimitImpl arLimit = new ARLimitImpl();
        return arLimit;
    }

    public ArrayElement createArrayElement() {
        ArrayElementImpl arrayElement = new ArrayElementImpl();
        return arrayElement;
    }

    public BooleanType createBooleanType() {
        BooleanTypeImpl booleanType = new BooleanTypeImpl();
        return booleanType;
    }

    public Datatype createDatatype() {
        DatatypeImpl datatype = new DatatypeImpl();
        return datatype;
    }

    public OpaqueType createOpaqueType() {
        OpaqueTypeImpl opaqueType = new OpaqueTypeImpl();
        return opaqueType;
    }

    public RecordElement createRecordElement() {
        RecordElementImpl recordElement = new RecordElementImpl();
        return recordElement;
    }

    public StringType createStringType() {
        StringTypeImpl stringType = new StringTypeImpl();
        return stringType;
    }

    public IntegerType createIntegerType() {
        IntegerTypeImpl integerType = new IntegerTypeImpl();
        return integerType;
    }

    public RealType createRealType() {
        RealTypeImpl realType = new RealTypeImpl();
        return realType;
    }

    public CharType createCharType() {
        CharTypeImpl charType = new CharTypeImpl();
        return charType;
    }

    public ArrayType createArrayType() {
        ArrayTypeImpl arrayType = new ArrayTypeImpl();
        return arrayType;
    }

    public RecordType createRecordType() {
        RecordTypeImpl recordType = new RecordTypeImpl();
        return recordType;
    }

    public DataPrototype createDataPrototype() {
        DataPrototypeImpl dataPrototype = new DataPrototypeImpl();
        return dataPrototype;
    }

    public RealTypeEncodingEnum createRealTypeEncodingEnumFromString(EDataType eDataType, String initialValue) {
        RealTypeEncodingEnum result = RealTypeEncodingEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertRealTypeEncodingEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DatatypesPackage getDatatypesPackage() {
        return (DatatypesPackage)this.getEPackage();
    }

    @Deprecated
    public static DatatypesPackage getPackage() {
        return DatatypesPackage.eINSTANCE;
    }
}

