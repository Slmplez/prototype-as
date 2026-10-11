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
package autosar21.genericstructure.commonpatterns.primitivetypes.impl;

import autosar21.genericstructure.commonpatterns.primitivetypes.BooleanContainer;
import autosar21.genericstructure.commonpatterns.primitivetypes.FloatContainer;
import autosar21.genericstructure.commonpatterns.primitivetypes.IntegerContainer;
import autosar21.genericstructure.commonpatterns.primitivetypes.PrimitivetypesFactory;
import autosar21.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar21.genericstructure.commonpatterns.primitivetypes.StringContainer;
import autosar21.genericstructure.commonpatterns.primitivetypes.impl.BooleanContainerImpl;
import autosar21.genericstructure.commonpatterns.primitivetypes.impl.FloatContainerImpl;
import autosar21.genericstructure.commonpatterns.primitivetypes.impl.IntegerContainerImpl;
import autosar21.genericstructure.commonpatterns.primitivetypes.impl.StringContainerImpl;
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

public class PrimitivetypesFactoryImpl
extends EFactoryImpl
implements PrimitivetypesFactory {
    private DatatypeFactory datatypeFactory = null;

    public static PrimitivetypesFactory init() {
        try {
            PrimitivetypesFactory thePrimitivetypesFactory = (PrimitivetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
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
                return this.createBooleanFromString(eDataType, initialValue);
            }
            case 6: {
                return this.createFloatFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createIdentifierFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createIntegerFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createUnlimitedNaturalFromString(eDataType, initialValue);
            }
            case 10: {
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
                return this.convertBooleanToString(eDataType, instanceValue);
            }
            case 6: {
                return this.convertFloatToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertIdentifierToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertIntegerToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertUnlimitedNaturalToString(eDataType, instanceValue);
            }
            case 10: {
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

    public String createIdentifierFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertIdentifierToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public Integer createIntegerFromString(EDataType eDataType, String initialValue) {
        return (Integer)super.createFromString(eDataType, initialValue);
    }

    public String convertIntegerToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public BigInteger createUnlimitedNaturalFromString(EDataType eDataType, String initialValue) {
        return (BigInteger)super.createFromString(eDataType, initialValue);
    }

    public String convertUnlimitedNaturalToString(EDataType eDataType, Object instanceValue) {
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

