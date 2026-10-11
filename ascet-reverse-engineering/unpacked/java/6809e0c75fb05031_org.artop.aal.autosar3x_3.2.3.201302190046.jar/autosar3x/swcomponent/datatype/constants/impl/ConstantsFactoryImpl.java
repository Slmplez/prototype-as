/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.swcomponent.datatype.constants.impl;

import autosar3x.swcomponent.datatype.constants.ArraySpecification;
import autosar3x.swcomponent.datatype.constants.BooleanLiteral;
import autosar3x.swcomponent.datatype.constants.CharLiteral;
import autosar3x.swcomponent.datatype.constants.ConstantReference;
import autosar3x.swcomponent.datatype.constants.ConstantSpecification;
import autosar3x.swcomponent.datatype.constants.ConstantsFactory;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.IntegerLiteral;
import autosar3x.swcomponent.datatype.constants.OpaqueLiteral;
import autosar3x.swcomponent.datatype.constants.RealLiteral;
import autosar3x.swcomponent.datatype.constants.RecordSpecification;
import autosar3x.swcomponent.datatype.constants.StringLiteral;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.datatype.constants.impl.ArraySpecificationImpl;
import autosar3x.swcomponent.datatype.constants.impl.BooleanLiteralImpl;
import autosar3x.swcomponent.datatype.constants.impl.CharLiteralImpl;
import autosar3x.swcomponent.datatype.constants.impl.ConstantReferenceImpl;
import autosar3x.swcomponent.datatype.constants.impl.ConstantSpecificationImpl;
import autosar3x.swcomponent.datatype.constants.impl.IntegerLiteralImpl;
import autosar3x.swcomponent.datatype.constants.impl.OpaqueLiteralImpl;
import autosar3x.swcomponent.datatype.constants.impl.RealLiteralImpl;
import autosar3x.swcomponent.datatype.constants.impl.RecordSpecificationImpl;
import autosar3x.swcomponent.datatype.constants.impl.StringLiteralImpl;
import autosar3x.swcomponent.datatype.constants.impl.ValueSpecificationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ConstantsFactoryImpl
extends EFactoryImpl
implements ConstantsFactory {
    public static ConstantsFactory init() {
        try {
            ConstantsFactory theConstantsFactory = (ConstantsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/d/c");
            if (theConstantsFactory != null) {
                return theConstantsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ConstantsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createArraySpecification();
            }
            case 1: {
                return this.createValueSpecification();
            }
            case 2: {
                return this.createBooleanLiteral();
            }
            case 3: {
                return this.createCharLiteral();
            }
            case 4: {
                return this.createConstantReference();
            }
            case 5: {
                return this.createConstantSpecification();
            }
            case 6: {
                return this.createIntegerLiteral();
            }
            case 7: {
                return this.createOpaqueLiteral();
            }
            case 8: {
                return this.createRealLiteral();
            }
            case 9: {
                return this.createRecordSpecification();
            }
            case 10: {
                return this.createStringLiteral();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ArraySpecification createArraySpecification() {
        ArraySpecificationImpl arraySpecification = new ArraySpecificationImpl();
        return arraySpecification;
    }

    public ValueSpecification createValueSpecification() {
        ValueSpecificationImpl valueSpecification = new ValueSpecificationImpl();
        return valueSpecification;
    }

    public BooleanLiteral createBooleanLiteral() {
        BooleanLiteralImpl booleanLiteral = new BooleanLiteralImpl();
        return booleanLiteral;
    }

    public CharLiteral createCharLiteral() {
        CharLiteralImpl charLiteral = new CharLiteralImpl();
        return charLiteral;
    }

    public ConstantReference createConstantReference() {
        ConstantReferenceImpl constantReference = new ConstantReferenceImpl();
        return constantReference;
    }

    public ConstantSpecification createConstantSpecification() {
        ConstantSpecificationImpl constantSpecification = new ConstantSpecificationImpl();
        return constantSpecification;
    }

    public IntegerLiteral createIntegerLiteral() {
        IntegerLiteralImpl integerLiteral = new IntegerLiteralImpl();
        return integerLiteral;
    }

    public OpaqueLiteral createOpaqueLiteral() {
        OpaqueLiteralImpl opaqueLiteral = new OpaqueLiteralImpl();
        return opaqueLiteral;
    }

    public RealLiteral createRealLiteral() {
        RealLiteralImpl realLiteral = new RealLiteralImpl();
        return realLiteral;
    }

    public RecordSpecification createRecordSpecification() {
        RecordSpecificationImpl recordSpecification = new RecordSpecificationImpl();
        return recordSpecification;
    }

    public StringLiteral createStringLiteral() {
        StringLiteralImpl stringLiteral = new StringLiteralImpl();
        return stringLiteral;
    }

    public ConstantsPackage getConstantsPackage() {
        return (ConstantsPackage)this.getEPackage();
    }

    @Deprecated
    public static ConstantsPackage getPackage() {
        return ConstantsPackage.eINSTANCE;
    }
}

