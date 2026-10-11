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
package autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl;

import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ArgumentDirectionEnum;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.BooleanContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.ByteOrderEnum;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.FloatContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.IntegerContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.MonotonyEnum;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesFactory;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.StringContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl.BooleanContainerImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl.FloatContainerImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl.IntegerContainerImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl.StringContainerImpl;
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
            PrimitivetypesFactory thePrimitivetypesFactory = (PrimitivetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/pt");
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
                return this.createByteOrderEnumFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createMonotonyEnumFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createArgumentDirectionEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createAddressFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createAlignmentTypeFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createBooleanFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createCategoryStringFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createStringFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createDateTimeFromString(eDataType, initialValue);
            }
            case 13: {
                return this.createFloatFromString(eDataType, initialValue);
            }
            case 14: {
                return this.createIntegerFromString(eDataType, initialValue);
            }
            case 15: {
                return this.createMimeTypeStringFromString(eDataType, initialValue);
            }
            case 16: {
                return this.createNameTokenFromString(eDataType, initialValue);
            }
            case 17: {
                return this.createNativeDeclarationStringFromString(eDataType, initialValue);
            }
            case 18: {
                return this.createNumericalFromString(eDataType, initialValue);
            }
            case 19: {
                return this.createPositiveIntegerFromString(eDataType, initialValue);
            }
            case 20: {
                return this.createRegularExpressionFromString(eDataType, initialValue);
            }
            case 21: {
                return this.createRevisionLabelStringFromString(eDataType, initialValue);
            }
            case 22: {
                return this.createSectionInitializationPolicyTypeFromString(eDataType, initialValue);
            }
            case 23: {
                return this.createTimeValueFromString(eDataType, initialValue);
            }
            case 24: {
                return this.createUnlimitedIntegerFromString(eDataType, initialValue);
            }
            case 25: {
                return this.createUriStringFromString(eDataType, initialValue);
            }
            case 26: {
                return this.createVerbatimStringFromString(eDataType, initialValue);
            }
            case 27: {
                return this.createDisplayFormatStringFromString(eDataType, initialValue);
            }
            case 28: {
                return this.createNameTokensFromString(eDataType, initialValue);
            }
            case 29: {
                return this.createCIdentifierFromString(eDataType, initialValue);
            }
            case 30: {
                return this.createIdentifierFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createRefFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.convertByteOrderEnumToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertMonotonyEnumToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertArgumentDirectionEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertAddressToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertAlignmentTypeToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertBooleanToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertCategoryStringToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertStringToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertDateTimeToString(eDataType, instanceValue);
            }
            case 13: {
                return this.convertFloatToString(eDataType, instanceValue);
            }
            case 14: {
                return this.convertIntegerToString(eDataType, instanceValue);
            }
            case 15: {
                return this.convertMimeTypeStringToString(eDataType, instanceValue);
            }
            case 16: {
                return this.convertNameTokenToString(eDataType, instanceValue);
            }
            case 17: {
                return this.convertNativeDeclarationStringToString(eDataType, instanceValue);
            }
            case 18: {
                return this.convertNumericalToString(eDataType, instanceValue);
            }
            case 19: {
                return this.convertPositiveIntegerToString(eDataType, instanceValue);
            }
            case 20: {
                return this.convertRegularExpressionToString(eDataType, instanceValue);
            }
            case 21: {
                return this.convertRevisionLabelStringToString(eDataType, instanceValue);
            }
            case 22: {
                return this.convertSectionInitializationPolicyTypeToString(eDataType, instanceValue);
            }
            case 23: {
                return this.convertTimeValueToString(eDataType, instanceValue);
            }
            case 24: {
                return this.convertUnlimitedIntegerToString(eDataType, instanceValue);
            }
            case 25: {
                return this.convertUriStringToString(eDataType, instanceValue);
            }
            case 26: {
                return this.convertVerbatimStringToString(eDataType, instanceValue);
            }
            case 27: {
                return this.convertDisplayFormatStringToString(eDataType, instanceValue);
            }
            case 28: {
                return this.convertNameTokensToString(eDataType, instanceValue);
            }
            case 29: {
                return this.convertCIdentifierToString(eDataType, instanceValue);
            }
            case 30: {
                return this.convertIdentifierToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertRefToString(eDataType, instanceValue);
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

    public MonotonyEnum createMonotonyEnumFromString(EDataType eDataType, String initialValue) {
        MonotonyEnum result = MonotonyEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertMonotonyEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ArgumentDirectionEnum createArgumentDirectionEnumFromString(EDataType eDataType, String initialValue) {
        ArgumentDirectionEnum result = ArgumentDirectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertArgumentDirectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public String createAddressFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertAddressToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createAlignmentTypeFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertAlignmentTypeToString(EDataType eDataType, Object instanceValue) {
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

    public String createCategoryStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertCategoryStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertStringToString(EDataType eDataType, Object instanceValue) {
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

    public MimeType createMimeTypeStringFromString(EDataType eDataType, String initialValue) {
        return (MimeType)super.createFromString(eDataType, initialValue);
    }

    public String convertMimeTypeStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createNameTokenFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertNameTokenToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createNativeDeclarationStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertNativeDeclarationStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createNumericalFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertNumericalToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public Long createPositiveIntegerFromString(EDataType eDataType, String initialValue) {
        return (Long)super.createFromString(eDataType, initialValue);
    }

    public String convertPositiveIntegerToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createRegularExpressionFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertRegularExpressionToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createRevisionLabelStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertRevisionLabelStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createSectionInitializationPolicyTypeFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertSectionInitializationPolicyTypeToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public Double createTimeValueFromString(EDataType eDataType, String initialValue) {
        return (Double)super.createFromString(eDataType, initialValue);
    }

    public String convertTimeValueToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public BigInteger createUnlimitedIntegerFromString(EDataType eDataType, String initialValue) {
        return (BigInteger)super.createFromString(eDataType, initialValue);
    }

    public String convertUnlimitedIntegerToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public URI createUriStringFromString(EDataType eDataType, String initialValue) {
        return (URI)super.createFromString(eDataType, initialValue);
    }

    public String convertUriStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createVerbatimStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertVerbatimStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createDisplayFormatStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertDisplayFormatStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createNameTokensFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertNameTokensToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createCIdentifierFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertCIdentifierToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createIdentifierFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertIdentifierToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createRefFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertRefToString(EDataType eDataType, Object instanceValue) {
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

