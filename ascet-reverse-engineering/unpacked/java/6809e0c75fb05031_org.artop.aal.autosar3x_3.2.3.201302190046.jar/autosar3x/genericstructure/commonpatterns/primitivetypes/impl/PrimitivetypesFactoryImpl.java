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
package autosar3x.genericstructure.commonpatterns.primitivetypes.impl;

import autosar3x.genericstructure.commonpatterns.primitivetypes.BooleanContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.FloatContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.IntegerContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesFactory;
import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar3x.genericstructure.commonpatterns.primitivetypes.StringContainer;
import autosar3x.genericstructure.commonpatterns.primitivetypes.impl.BooleanContainerImpl;
import autosar3x.genericstructure.commonpatterns.primitivetypes.impl.FloatContainerImpl;
import autosar3x.genericstructure.commonpatterns.primitivetypes.impl.IntegerContainerImpl;
import autosar3x.genericstructure.commonpatterns.primitivetypes.impl.StringContainerImpl;
import java.math.BigInteger;
import java.net.URI;
import javax.activation.MimeType;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class PrimitivetypesFactoryImpl
extends EFactoryImpl
implements PrimitivetypesFactory {
    private DatatypeFactory datatypeFactory = null;

    public static PrimitivetypesFactory init() {
        try {
            PrimitivetypesFactory thePrimitivetypesFactory = (PrimitivetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
            if (thePrimitivetypesFactory != null) {
                return thePrimitivetypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new PrimitivetypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createStringContainer();
            }
            case 1: {
                return this.createFloatContainer();
            }
            case 2: {
                return this.createIntegerContainer();
            }
            case 3: {
                return this.createBooleanContainer();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.createStringFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createIdentifierFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createExtIdClassEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createNameTokenFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createMimeTypeStringFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createUriStringFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createAddressFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createBooleanFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createFloatFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createIntegerFromString(eDataType, initialValue);
            }
            case 14: {
                return this.createUnlimitedIntegerFromString(eDataType, initialValue);
            }
            case 15: {
                return this.createRegularExpressionFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createDateTimeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.convertStringToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertIdentifierToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertExtIdClassEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertNameTokenToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertMimeTypeStringToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertUriStringToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertAddressToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertBooleanToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertFloatToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertIntegerToString(eDataType, instanceValue);
            }
            case 14: {
                return this.convertUnlimitedIntegerToString(eDataType, instanceValue);
            }
            case 15: {
                return this.convertRegularExpressionToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertDateTimeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public StringContainer createStringContainer() {
        StringContainerImpl stringContainer = new StringContainerImpl();
        return stringContainer;
    }

    public FloatContainer createFloatContainer() {
        FloatContainerImpl floatContainer = new FloatContainerImpl();
        return floatContainer;
    }

    public IntegerContainer createIntegerContainer() {
        IntegerContainerImpl integerContainer = new IntegerContainerImpl();
        return integerContainer;
    }

    public BooleanContainer createBooleanContainer() {
        BooleanContainerImpl booleanContainer = new BooleanContainerImpl();
        return booleanContainer;
    }

    public String createStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createIdentifierFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertIdentifierToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createExtIdClassEnumFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertExtIdClassEnumToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createNameTokenFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertNameTokenToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public MimeType createMimeTypeStringFromString(EDataType eDataType, String initialValue) {
        return (MimeType)super.createFromString(eDataType, initialValue);
    }

    public String convertMimeTypeStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public URI createUriStringFromString(EDataType eDataType, String initialValue) {
        return (URI)super.createFromString(eDataType, initialValue);
    }

    public String convertUriStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createAddressFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertAddressToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public Boolean createBooleanFromString(EDataType eDataType, String initialValue) {
        if ("1".equals(initialValue)) {
            initialValue = "true";
        }
        return (Boolean)super.createFromString(eDataType, initialValue);
    }

    public String convertBooleanToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public Double createFloatFromString(EDataType eDataType, String initialValue) {
        return (Double)super.createFromString(eDataType, initialValue);
    }

    public String convertFloatToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public Integer createIntegerFromString(EDataType eDataType, String initialValue) {
        return (Integer)super.createFromString(eDataType, initialValue);
    }

    public String convertIntegerToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public BigInteger createUnlimitedIntegerFromString(EDataType eDataType, String initialValue) {
        return (BigInteger)super.createFromString(eDataType, initialValue);
    }

    public String convertUnlimitedIntegerToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createRegularExpressionFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertRegularExpressionToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public XMLGregorianCalendar createDateTimeFromString(EDataType eDataType, String initialValue) {
        if (initialValue == null) {
            return null;
        }
        if (this.datatypeFactory == null) {
            try {
                this.datatypeFactory = DatatypeFactory.newInstance();
            }
            catch (DatatypeConfigurationException datatypeConfigurationException) {}
        }
        if (this.datatypeFactory != null) {
            return this.datatypeFactory.newXMLGregorianCalendar(initialValue);
        }
        return (XMLGregorianCalendar)super.createFromString(initialValue);
    }

    public String convertDateTimeToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public PrimitivetypesPackage getPrimitivetypesPackage() {
        return (PrimitivetypesPackage)this.getEPackage();
    }

    @Deprecated
    public static PrimitivetypesPackage getPackage() {
        return PrimitivetypesPackage.eINSTANCE;
    }
}

