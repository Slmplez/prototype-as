/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.WrappedException
 */
package org.eclipse.emf.ecore.impl;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.ParseException;
import java.util.Date;
import java.util.Map;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EAnnotationImpl;
import org.eclipse.emf.ecore.impl.EAttributeImpl;
import org.eclipse.emf.ecore.impl.EClassImpl;
import org.eclipse.emf.ecore.impl.EDataTypeImpl;
import org.eclipse.emf.ecore.impl.EEnumImpl;
import org.eclipse.emf.ecore.impl.EEnumLiteralImpl;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.impl.EGenericTypeImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.impl.EOperationImpl;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.impl.EParameterImpl;
import org.eclipse.emf.ecore.impl.EReferenceImpl;
import org.eclipse.emf.ecore.impl.EStringToStringMapEntryImpl;
import org.eclipse.emf.ecore.impl.ETypeParameterImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcoreFactoryImpl
extends EFactoryImpl
implements EcoreFactory {
    protected static final char[] HEX_DIGITS = EFactoryImpl.HEX_DIGITS;

    public static EcoreFactory init() {
        try {
            EcoreFactory theEcoreFactory = (EcoreFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.eclipse.org/emf/2002/Ecore");
            if (theEcoreFactory != null) {
                return theEcoreFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log(exception);
        }
        return new EcoreFactoryImpl();
    }

    @Override
    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createEAttribute();
            }
            case 1: {
                return this.createEAnnotation();
            }
            case 2: {
                return this.createEClass();
            }
            case 4: {
                return this.createEDataType();
            }
            case 5: {
                return this.createEEnum();
            }
            case 6: {
                return this.createEEnumLiteral();
            }
            case 7: {
                return this.createEFactory();
            }
            case 10: {
                return this.createEObject();
            }
            case 11: {
                return this.createEOperation();
            }
            case 12: {
                return this.createEPackage();
            }
            case 13: {
                return this.createEParameter();
            }
            case 14: {
                return this.createEReference();
            }
            case 17: {
                return (EObject)((Object)this.createEStringToStringMapEntry());
            }
            case 18: {
                return this.createEGenericType();
            }
            case 19: {
                return this.createETypeParameter();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    @Override
    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 20: {
                return this.createEBigDecimalFromString(eDataType, initialValue);
            }
            case 21: {
                return this.createEBigIntegerFromString(eDataType, initialValue);
            }
            case 22: {
                return this.createEBooleanFromString(eDataType, initialValue);
            }
            case 23: {
                return this.createEBooleanObjectFromString(eDataType, initialValue);
            }
            case 24: {
                return this.createEByteFromString(eDataType, initialValue);
            }
            case 25: {
                return this.createEByteArrayFromString(eDataType, initialValue);
            }
            case 26: {
                return this.createEByteObjectFromString(eDataType, initialValue);
            }
            case 27: {
                return this.createECharFromString(eDataType, initialValue);
            }
            case 28: {
                return this.createECharacterObjectFromString(eDataType, initialValue);
            }
            case 29: {
                return this.createEDateFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createEDoubleFromString(eDataType, initialValue);
            }
            case 32: {
                return this.createEDoubleObjectFromString(eDataType, initialValue);
            }
            case 37: {
                return this.createEFloatFromString(eDataType, initialValue);
            }
            case 38: {
                return this.createEFloatObjectFromString(eDataType, initialValue);
            }
            case 39: {
                return this.createEIntFromString(eDataType, initialValue);
            }
            case 40: {
                return this.createEIntegerObjectFromString(eDataType, initialValue);
            }
            case 41: {
                return this.createEJavaClassFromString(eDataType, initialValue);
            }
            case 42: {
                return this.createEJavaObjectFromString(eDataType, initialValue);
            }
            case 43: {
                return this.createELongFromString(eDataType, initialValue);
            }
            case 44: {
                return this.createELongObjectFromString(eDataType, initialValue);
            }
            case 48: {
                return this.createEShortFromString(eDataType, initialValue);
            }
            case 49: {
                return this.createEShortObjectFromString(eDataType, initialValue);
            }
            case 50: {
                return this.createEStringFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 20: {
                return this.convertEBigDecimalToString(eDataType, instanceValue);
            }
            case 21: {
                return this.convertEBigIntegerToString(eDataType, instanceValue);
            }
            case 22: {
                return this.convertEBooleanToString(eDataType, instanceValue);
            }
            case 23: {
                return this.convertEBooleanObjectToString(eDataType, instanceValue);
            }
            case 24: {
                return this.convertEByteToString(eDataType, instanceValue);
            }
            case 25: {
                return this.convertEByteArrayToString(eDataType, instanceValue);
            }
            case 26: {
                return this.convertEByteObjectToString(eDataType, instanceValue);
            }
            case 27: {
                return this.convertECharToString(eDataType, instanceValue);
            }
            case 28: {
                return this.convertECharacterObjectToString(eDataType, instanceValue);
            }
            case 29: {
                return this.convertEDateToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertEDoubleToString(eDataType, instanceValue);
            }
            case 32: {
                return this.convertEDoubleObjectToString(eDataType, instanceValue);
            }
            case 37: {
                return this.convertEFloatToString(eDataType, instanceValue);
            }
            case 38: {
                return this.convertEFloatObjectToString(eDataType, instanceValue);
            }
            case 39: {
                return this.convertEIntToString(eDataType, instanceValue);
            }
            case 40: {
                return this.convertEIntegerObjectToString(eDataType, instanceValue);
            }
            case 41: {
                return this.convertEJavaClassToString(eDataType, instanceValue);
            }
            case 42: {
                return this.convertEJavaObjectToString(eDataType, instanceValue);
            }
            case 43: {
                return this.convertELongToString(eDataType, instanceValue);
            }
            case 44: {
                return this.convertELongObjectToString(eDataType, instanceValue);
            }
            case 48: {
                return this.convertEShortToString(eDataType, instanceValue);
            }
            case 49: {
                return this.convertEShortObjectToString(eDataType, instanceValue);
            }
            case 50: {
                return this.convertEStringToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public EObject createEObject() {
        EObjectImpl eObject = new EObjectImpl();
        return eObject;
    }

    @Override
    public EAttribute createEAttribute() {
        EAttributeImpl eAttribute = new EAttributeImpl();
        return eAttribute;
    }

    @Override
    public EAnnotation createEAnnotation() {
        EAnnotationImpl eAnnotation = new EAnnotationImpl();
        return eAnnotation;
    }

    @Override
    public EClass createEClass() {
        EClassImpl eClass = new EClassImpl();
        return eClass;
    }

    @Override
    public EDataType createEDataType() {
        EDataTypeImpl eDataType = new EDataTypeImpl();
        return eDataType;
    }

    @Override
    public EParameter createEParameter() {
        EParameterImpl eParameter = new EParameterImpl();
        return eParameter;
    }

    @Override
    public EOperation createEOperation() {
        EOperationImpl eOperation = new EOperationImpl();
        return eOperation;
    }

    @Override
    public EPackage createEPackage() {
        EPackageImpl ePackage = new EPackageImpl();
        return ePackage;
    }

    @Override
    public EFactory createEFactory() {
        EFactoryImpl eFactory = new EFactoryImpl();
        return eFactory;
    }

    @Override
    public EEnumLiteral createEEnumLiteral() {
        EEnumLiteralImpl eEnumLiteral = new EEnumLiteralImpl();
        return eEnumLiteral;
    }

    @Override
    public EEnum createEEnum() {
        EEnumImpl eEnum = new EEnumImpl();
        return eEnum;
    }

    protected Boolean booleanValueOf(String initialValue) {
        if ("true".equalsIgnoreCase(initialValue)) {
            return Boolean.TRUE;
        }
        if ("false".equalsIgnoreCase(initialValue)) {
            return Boolean.FALSE;
        }
        throw new IllegalArgumentException("Expecting true or false");
    }

    public Boolean createEBooleanObjectFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : this.booleanValueOf(initialValue);
    }

    public String convertEBooleanObjectToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Character createECharacterObjectFromString(EDataType metaObject, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        char charValue = '\u0000';
        try {
            charValue = (char)Integer.parseInt(initialValue);
        }
        catch (NumberFormatException e) {
            char[] carray = initialValue.toCharArray();
            charValue = carray[0];
        }
        return Character.valueOf(charValue);
    }

    public String convertECharacterObjectToString(EDataType metaObject, Object instanceValue) {
        if (instanceValue instanceof Character) {
            return Integer.toString(((Character)instanceValue).charValue());
        }
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Date createEDateFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        ParseException exception = null;
        int i = 0;
        while (i < EDATE_FORMATS.length) {
            try {
                return EDATE_FORMATS[i].parse(initialValue);
            }
            catch (ParseException parseException) {
                exception = parseException;
                ++i;
            }
        }
        throw new WrappedException(exception);
    }

    public String convertEDateToString(EDataType eDataType, Object instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        return EDATE_FORMATS[0].format((Date)instanceValue);
    }

    public Double createEDoubleObjectFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Double.valueOf(initialValue);
    }

    public String convertEDoubleObjectToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Float createEFloatObjectFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Float.valueOf(initialValue);
    }

    public String convertEFloatObjectToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Integer createEIntegerObjectFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Integer.valueOf(initialValue);
    }

    public String convertEIntegerObjectToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public EReference createEReference() {
        EReferenceImpl eReference = new EReferenceImpl();
        return eReference;
    }

    public Map.Entry<String, String> createEStringToStringMapEntry() {
        EStringToStringMapEntryImpl eStringToStringMapEntry = new EStringToStringMapEntryImpl();
        return eStringToStringMapEntry;
    }

    @Override
    public EGenericType createEGenericType() {
        EGenericTypeImpl eGenericType = new EGenericTypeImpl();
        return eGenericType;
    }

    @Override
    public ETypeParameter createETypeParameter() {
        ETypeParameterImpl eTypeParameter = new ETypeParameterImpl();
        return eTypeParameter;
    }

    public BigDecimal createEBigDecimalFromString(EDataType eDataType, String initialValue) {
        return initialValue == null ? null : new BigDecimal(initialValue);
    }

    public String convertEBigDecimalToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public BigInteger createEBigIntegerFromString(EDataType eDataType, String initialValue) {
        return initialValue == null ? null : new BigInteger(initialValue);
    }

    public String convertEBigIntegerToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public EcorePackage getEcorePackage() {
        return (EcorePackage)this.getEPackage();
    }

    @Deprecated
    public static EcorePackage getPackage() {
        return EcorePackage.eINSTANCE;
    }

    public String createEStringFromString(EDataType metaObject, String initialValue) {
        return initialValue;
    }

    public String convertEStringToString(EDataType metaObject, Object instanceValue) {
        return (String)instanceValue;
    }

    public Integer createEIntFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Integer.valueOf(initialValue);
    }

    public String convertEIntToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Boolean createEBooleanFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : this.booleanValueOf(initialValue);
    }

    public String convertEBooleanToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Byte createEByteObjectFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Byte.valueOf(initialValue);
    }

    public String convertEByteObjectToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Float createEFloatFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Float.valueOf(initialValue);
    }

    public String convertEFloatToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Character createECharFromString(EDataType metaObject, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        char charValue = '\u0000';
        try {
            charValue = (char)Integer.parseInt(initialValue);
        }
        catch (NumberFormatException e) {
            char[] carray = initialValue.toCharArray();
            charValue = carray[0];
        }
        return Character.valueOf(charValue);
    }

    public String convertECharToString(EDataType metaObject, Object instanceValue) {
        if (instanceValue instanceof Character) {
            return Integer.toString(((Character)instanceValue).charValue());
        }
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Long createELongFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Long.valueOf(initialValue);
    }

    public String convertELongToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Double createEDoubleFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Double.valueOf(initialValue);
    }

    public String convertEDoubleToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Byte createEByteFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Byte.valueOf(initialValue);
    }

    public String convertEByteToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public byte[] createEByteArrayFromString(EDataType eDataType, String initialValue) {
        return this.hexStringToBytes(initialValue);
    }

    protected static byte hexCharToByte(char character) {
        return EFactoryImpl.hexCharToByte(character);
    }

    public String convertEByteArrayToString(EDataType eDataType, Object instanceValue) {
        if (instanceValue == null) {
            return null;
        }
        byte[] bytes = (byte[])instanceValue;
        return this.bytesToHexString(bytes, bytes.length);
    }

    public Short createEShortFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Short.valueOf(initialValue);
    }

    public String convertEShortToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Class<?> createEJavaClassFromString(EDataType metaObject, String initialValue) {
        block11: {
            try {
                if (initialValue != null) break block11;
                return null;
            }
            catch (ClassNotFoundException e) {
                throw new WrappedException((Exception)e);
            }
        }
        if ("boolean".equals(initialValue)) {
            return Boolean.TYPE;
        }
        if ("byte".equals(initialValue)) {
            return Byte.TYPE;
        }
        if ("char".equals(initialValue)) {
            return Character.TYPE;
        }
        if ("double".equals(initialValue)) {
            return Double.TYPE;
        }
        if ("float".equals(initialValue)) {
            return Float.TYPE;
        }
        if ("int".equals(initialValue)) {
            return Integer.TYPE;
        }
        if ("long".equals(initialValue)) {
            return Long.TYPE;
        }
        if ("short".equals(initialValue)) {
            return Short.TYPE;
        }
        return Class.forName(initialValue);
    }

    public String convertEJavaClassToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? "" : ((Class)instanceValue).getName();
    }

    public Object createEJavaObjectFromString(EDataType eDataType, String initialValue) {
        return this.createFromString(initialValue);
    }

    public String convertEJavaObjectToString(EDataType eDataType, Object instanceValue) {
        return this.convertToString(instanceValue);
    }

    public Long createELongObjectFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Long.valueOf(initialValue);
    }

    public String convertELongObjectToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public Short createEShortObjectFromString(EDataType metaObject, String initialValue) {
        return initialValue == null ? null : Short.valueOf(initialValue);
    }

    public String convertEShortObjectToString(EDataType metaObject, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }
}

