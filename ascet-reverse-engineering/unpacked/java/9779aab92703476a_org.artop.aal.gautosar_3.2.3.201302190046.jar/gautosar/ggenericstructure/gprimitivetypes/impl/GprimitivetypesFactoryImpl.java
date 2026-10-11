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
package gautosar.ggenericstructure.gprimitivetypes.impl;

import gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesFactory;
import gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GprimitivetypesFactoryImpl
extends EFactoryImpl
implements GprimitivetypesFactory {
    private DatatypeFactory datatypeFactory = null;

    public static GprimitivetypesFactory init() {
        try {
            GprimitivetypesFactory theGprimitivetypesFactory = (GprimitivetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/pt");
            if (theGprimitivetypesFactory != null) {
                return theGprimitivetypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GprimitivetypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 0: {
                return this.createStringFromString(eDataType, initialValue);
            }
            case 1: {
                return this.createBooleanFromString(eDataType, initialValue);
            }
            case 2: {
                return this.createFloatFromString(eDataType, initialValue);
            }
            case 3: {
                return this.createIntegerFromString(eDataType, initialValue);
            }
            case 4: {
                return this.createDateTimeFromString(eDataType, initialValue);
            }
            case 5: {
                return this.createUnlimitedNaturalFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createIdentifierFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createBaseTypeEncodingStringFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createVerbatimStringFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createNumericalFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 0: {
                return this.convertStringToString(eDataType, instanceValue);
            }
            case 1: {
                return this.convertBooleanToString(eDataType, instanceValue);
            }
            case 2: {
                return this.convertFloatToString(eDataType, instanceValue);
            }
            case 3: {
                return this.convertIntegerToString(eDataType, instanceValue);
            }
            case 4: {
                return this.convertDateTimeToString(eDataType, instanceValue);
            }
            case 5: {
                return this.convertUnlimitedNaturalToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertIdentifierToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertBaseTypeEncodingStringToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertVerbatimStringToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertNumericalToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String createStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertStringToString(EDataType eDataType, Object instanceValue) {
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

    public BigInteger createUnlimitedNaturalFromString(EDataType eDataType, String initialValue) {
        return (BigInteger)super.createFromString(eDataType, initialValue);
    }

    public String convertUnlimitedNaturalToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createIdentifierFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertIdentifierToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createBaseTypeEncodingStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertBaseTypeEncodingStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public String createVerbatimStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertVerbatimStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public BigDecimal createNumericalFromString(EDataType eDataType, String initialValue) {
        return (BigDecimal)super.createFromString(eDataType, initialValue);
    }

    public String convertNumericalToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public GprimitivetypesPackage getGprimitivetypesPackage() {
        return (GprimitivetypesPackage)this.getEPackage();
    }

    @Deprecated
    public static GprimitivetypesPackage getPackage() {
        return GprimitivetypesPackage.eINSTANCE;
    }
}

