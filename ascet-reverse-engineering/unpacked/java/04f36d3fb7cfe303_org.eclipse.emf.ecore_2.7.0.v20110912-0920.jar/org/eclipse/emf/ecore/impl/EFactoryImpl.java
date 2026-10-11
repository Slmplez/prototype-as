/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.impl;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.DynamicEObjectImpl;
import org.eclipse.emf.ecore.impl.EModelElementImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xml.type.util.XMLTypeUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EFactoryImpl
extends EModelElementImpl
implements EFactory {
    protected EPackage ePackage;
    static final char[] HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    protected static final DateFormat[] EDATE_FORMATS = new DateFormat[]{new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'SSSZ"), new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'SSS"), new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss"), new SafeSimpleDateFormat("yyyy-MM-dd'T'HH:mm"), new SafeSimpleDateFormat("yyyy-MM-dd")};

    protected EFactoryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EFACTORY;
    }

    @Override
    public EPackage getEPackage() {
        return this.ePackage;
    }

    @Override
    public void setEPackage(EPackage newEPackage) {
        if (newEPackage != this.ePackage) {
            NotificationChain msgs = null;
            if (this.ePackage != null) {
                msgs = ((InternalEObject)((Object)this.ePackage)).eInverseRemove(this, 4, EPackage.class, msgs);
            }
            if (newEPackage != null) {
                msgs = ((InternalEObject)((Object)newEPackage)).eInverseAdd(this, 4, EPackage.class, msgs);
            }
            if ((msgs = this.basicSetEPackage(newEPackage, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newEPackage, (Object)newEPackage));
        }
    }

    public NotificationChain basicSetEPackage(EPackage newEPackage, NotificationChain msgs) {
        EPackage oldEPackage = this.ePackage;
        this.ePackage = newEPackage;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldEPackage, (Object)newEPackage);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getEPackage();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setEPackage((EPackage)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setEPackage(null);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return this.ePackage != null;
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        switch (operationID) {
            case 0: {
                return this.getEAnnotation((String)arguments.get(0));
            }
            case 1: {
                return this.create((EClass)arguments.get(0));
            }
            case 2: {
                return this.createFromString((EDataType)arguments.get(0), (String)arguments.get(1));
            }
            case 3: {
                return this.convertToString((EDataType)arguments.get(0), arguments.get(1));
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    @Override
    public EObject create(EClass eClass) {
        if (this.getEPackage() != eClass.getEPackage() || eClass.isAbstract()) {
            throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
        }
        EList<EClass> eSuperTypes = eClass.getESuperTypes();
        while (!eSuperTypes.isEmpty()) {
            EClass eSuperType = (EClass)eSuperTypes.get(0);
            if (eSuperType.getInstanceClass() != null) {
                EObject result = eSuperType.getEPackage().getEFactoryInstance().create(eSuperType);
                ((InternalEObject)result).eSetClass(eClass);
                return result;
            }
            eSuperTypes = eSuperType.getESuperTypes();
        }
        return this.basicCreate(eClass);
    }

    protected EObject basicCreate(EClass eClass) {
        return eClass.getInstanceClassName() == "java.util.Map$Entry" ? new DynamicEObjectImpl.BasicEMapEntry(eClass) : new DynamicEObjectImpl(eClass);
    }

    @Override
    public Object createFromString(EDataType eDataType, String stringValue) {
        if (stringValue == null) {
            return null;
        }
        if (this.getEPackage() != eDataType.getEPackage()) {
            throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
        }
        if (eDataType instanceof EEnum) {
            EEnumLiteral result = ((EEnum)eDataType).getEEnumLiteralByLiteral(stringValue);
            if (result == null) {
                throw new IllegalArgumentException("The value '" + stringValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
            }
            return result;
        }
        switch (ExtendedMetaData.INSTANCE.getWhiteSpaceFacet(eDataType)) {
            case 2: {
                stringValue = this.replaceWhiteSpace(stringValue);
                break;
            }
            case 3: {
                stringValue = this.collapseWhiteSpace(stringValue);
            }
        }
        EDataType baseType = ExtendedMetaData.INSTANCE.getBaseType(eDataType);
        if (baseType != null) {
            return EcoreUtil.createFromString(baseType, stringValue);
        }
        EDataType itemType = ExtendedMetaData.INSTANCE.getItemType(eDataType);
        if (itemType != null) {
            ArrayList<Object> result = new ArrayList<Object>();
            StringTokenizer stringTokenizer = new StringTokenizer(stringValue);
            while (stringTokenizer.hasMoreTokens()) {
                String item = stringTokenizer.nextToken();
                result.add(EcoreUtil.createFromString(itemType, item));
            }
            return result;
        }
        List<EDataType> memberTypes = ExtendedMetaData.INSTANCE.getMemberTypes(eDataType);
        if (!memberTypes.isEmpty()) {
            for (EDataType memberType : memberTypes) {
                try {
                    Object result = EcoreUtil.createFromString(memberType, stringValue);
                    if (result == null) continue;
                    return result;
                }
                catch (RuntimeException result) {
                    // empty catch block
                }
            }
            throw new IllegalArgumentException("The value '" + stringValue + "' does not match any member types of the union datatype '" + eDataType.getName() + "'");
        }
        Class<?> c = EcoreUtil.wrapperClassFor(eDataType.getInstanceClass());
        if (c == null) {
            return null;
        }
        if (c == Character.class) {
            char charValue = '\u0000';
            try {
                charValue = (char)Integer.parseInt(stringValue);
            }
            catch (NumberFormatException e) {
                char[] carray = stringValue.toCharArray();
                charValue = carray[0];
            }
            return Character.valueOf(charValue);
        }
        if (c == Date.class) {
            int i = 0;
            while (i < EDATE_FORMATS.length) {
                try {
                    return EDATE_FORMATS[i].parse(stringValue);
                }
                catch (ParseException e) {
                    ++i;
                }
            }
            throw new IllegalArgumentException("The value '" + stringValue + "' is not a date formatted string of the form yyyy-MM-dd'T'HH:mm:ss'.'SSSZ or a valid subset thereof");
        }
        Class<String> stringClass = String.class;
        Class[] signature = new Class[]{stringClass};
        Constructor<?> ctor = null;
        try {
            ctor = c.getConstructor(signature);
        }
        catch (NoSuchMethodException noSuchMethodException) {
            // empty catch block
        }
        Throwable formatException = null;
        try {
            if (ctor != null) {
                Object[] ctorArgs = new Object[]{stringValue};
                return ctor.newInstance(ctorArgs);
            }
        }
        catch (InstantiationException e) {
            formatException = e;
        }
        catch (InvocationTargetException e) {
            formatException = e.getCause();
        }
        catch (IllegalAccessException e) {
            formatException = e;
        }
        Method valueOf = null;
        try {
            valueOf = c.getMethod("valueOf", signature);
        }
        catch (NoSuchMethodException noSuchMethodException) {
            // empty catch block
        }
        try {
            if (valueOf != null) {
                Object[] valueOfArgs = new Object[]{stringValue};
                return valueOf.invoke(null, valueOfArgs);
            }
        }
        catch (IllegalArgumentException e) {
            formatException = e;
        }
        catch (InvocationTargetException e) {
            formatException = e.getCause();
        }
        catch (IllegalAccessException e) {
            formatException = e;
        }
        String exceptionString = formatException != null ? formatException.toString() : "";
        throw new IllegalArgumentException("The value '" + stringValue + "' is invalid. " + exceptionString, formatException);
    }

    @Override
    public String convertToString(EDataType eDataType, Object objectValue) {
        if (this.getEPackage() != eDataType.getEPackage()) {
            throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
        }
        EDataType baseType = ExtendedMetaData.INSTANCE.getBaseType(eDataType);
        if (baseType != null) {
            return EcoreUtil.convertToString(baseType, objectValue);
        }
        EDataType itemType = ExtendedMetaData.INSTANCE.getItemType(eDataType);
        if (itemType != null) {
            if (objectValue == null) {
                return null;
            }
            List list = (List)objectValue;
            if (list.isEmpty()) {
                return "";
            }
            StringBuffer result = new StringBuffer();
            for (Object item : list) {
                result.append(EcoreUtil.convertToString(itemType, item));
                result.append(' ');
            }
            return result.substring(0, result.length() - 1);
        }
        List<EDataType> memberTypes = ExtendedMetaData.INSTANCE.getMemberTypes(eDataType);
        if (!memberTypes.isEmpty()) {
            for (EDataType memberType : memberTypes) {
                if (!memberType.isInstance(objectValue)) continue;
                try {
                    String result = EcoreUtil.convertToString(memberType, objectValue);
                    if (result == null) continue;
                    return result;
                }
                catch (Exception exception) {
                    // empty catch block
                }
            }
            throw new IllegalArgumentException("Invalid value: '" + objectValue + "' for datatype :" + eDataType.getName());
        }
        if (objectValue == null) {
            return null;
        }
        if (objectValue instanceof Character) {
            return Integer.toString(((Character)objectValue).charValue());
        }
        if (objectValue.getClass() == Date.class) {
            return EDATE_FORMATS[0].format((Date)objectValue);
        }
        return objectValue.toString();
    }

    byte[] hexStringToBytes(String initialValue) {
        if (initialValue == null) {
            return null;
        }
        int size = initialValue.length();
        int limit = (size + 1) / 2;
        byte[] result = new byte[limit];
        if (size % 2 != 0) {
            result[--limit] = EFactoryImpl.hexCharToByte(initialValue.charAt(size - 1));
        }
        int i = 0;
        int j = 0;
        while (i < limit) {
            byte high = EFactoryImpl.hexCharToByte(initialValue.charAt(j++));
            byte low = EFactoryImpl.hexCharToByte(initialValue.charAt(j++));
            result[i] = (byte)(high << 4 | low);
            ++i;
        }
        return result;
    }

    static byte hexCharToByte(char character) {
        switch (character) {
            case '0': 
            case '1': 
            case '2': 
            case '3': 
            case '4': 
            case '5': 
            case '6': 
            case '7': 
            case '8': 
            case '9': {
                return (byte)(character - 48);
            }
            case 'a': 
            case 'b': 
            case 'c': 
            case 'd': 
            case 'e': 
            case 'f': {
                return (byte)(character - 97 + 10);
            }
            case 'A': 
            case 'B': 
            case 'C': 
            case 'D': 
            case 'E': 
            case 'F': {
                return (byte)(character - 65 + 10);
            }
        }
        throw new NumberFormatException("Invalid hexadecimal");
    }

    String bytesToHexString(byte[] bytes, int count) {
        if (bytes == null) {
            return null;
        }
        char[] result = new char[2 * count];
        int i = 0;
        int j = 0;
        while (i < count) {
            int high = bytes[i] >> 4 & 0xF;
            int low = bytes[i] & 0xF;
            result[j++] = HEX_DIGITS[high];
            result[j++] = HEX_DIGITS[low];
            ++i;
        }
        return new String(result);
    }

    protected Object createFromString(String hexString) {
        if (hexString == null) {
            return null;
        }
        byte[] byteValue = this.hexStringToBytes(hexString);
        ByteArrayInputStream bytes = new ByteArrayInputStream(byteValue);
        try {
            ObjectInputStream in = new ObjectInputStream(bytes);
            return in.readObject();
        }
        catch (IOException exception) {
            throw new RuntimeException(exception);
        }
        catch (ClassNotFoundException exception) {
            throw new RuntimeException(exception);
        }
    }

    protected String convertToString(Object instanceValue) {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream(){

            public String toString() {
                return EFactoryImpl.this.bytesToHexString(this.buf, this.count);
            }
        };
        try {
            ObjectOutputStream out = new ObjectOutputStream(bytes);
            out.writeObject(instanceValue);
            out.close();
        }
        catch (IOException exception) {
            throw new RuntimeException(exception);
        }
        return bytes.toString();
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 1: {
                if (this.ePackage != null) {
                    msgs = ((InternalEObject)((Object)this.ePackage)).eInverseRemove(this, 4, EPackage.class, msgs);
                }
                return this.basicSetEPackage((EPackage)((Object)otherEnd), msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 1: {
                return this.basicSetEPackage(null, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    protected String replaceWhiteSpace(String value) {
        return XMLTypeUtil.normalize(value, false);
    }

    protected String collapseWhiteSpace(String value) {
        return XMLTypeUtil.normalize(value, true);
    }

    protected String[] split(String value) {
        return value.split("[ \t\n\r\f]");
    }

    private static class SafeSimpleDateFormat
    extends SimpleDateFormat {
        private static final long serialVersionUID = 1L;

        public SafeSimpleDateFormat(String pattern) {
            super(pattern, Locale.ENGLISH);
        }

        public synchronized Date parse(String source) throws ParseException {
            return super.parse(source);
        }

        public synchronized StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
            return super.format(date, toAppendTo, fieldPosition);
        }
    }
}

