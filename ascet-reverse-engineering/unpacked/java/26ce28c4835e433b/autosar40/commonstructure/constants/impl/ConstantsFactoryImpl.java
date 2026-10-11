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
package autosar40.commonstructure.constants.impl;

import autosar40.commonstructure.constants.ApplicationValueSpecification;
import autosar40.commonstructure.constants.ArrayValueSpecification;
import autosar40.commonstructure.constants.ConstantReference;
import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ConstantSpecificationMapping;
import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.constants.ConstantsFactory;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.constants.NumericalValueSpecification;
import autosar40.commonstructure.constants.RecordValueSpecification;
import autosar40.commonstructure.constants.ReferenceValueSpecification;
import autosar40.commonstructure.constants.TextValueSpecification;
import autosar40.commonstructure.constants.impl.ApplicationValueSpecificationImpl;
import autosar40.commonstructure.constants.impl.ArrayValueSpecificationImpl;
import autosar40.commonstructure.constants.impl.ConstantReferenceImpl;
import autosar40.commonstructure.constants.impl.ConstantSpecificationImpl;
import autosar40.commonstructure.constants.impl.ConstantSpecificationMappingImpl;
import autosar40.commonstructure.constants.impl.ConstantSpecificationMappingSetImpl;
import autosar40.commonstructure.constants.impl.NumericalValueSpecificationImpl;
import autosar40.commonstructure.constants.impl.RecordValueSpecificationImpl;
import autosar40.commonstructure.constants.impl.ReferenceValueSpecificationImpl;
import autosar40.commonstructure.constants.impl.TextValueSpecificationImpl;
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
            ConstantsFactory theConstantsFactory = (ConstantsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/c");
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
                return this.createApplicationValueSpecification();
            }
            case 1: {
                return this.createArrayValueSpecification();
            }
            case 2: {
                return this.createConstantReference();
            }
            case 3: {
                return this.createConstantSpecification();
            }
            case 4: {
                return this.createConstantSpecificationMapping();
            }
            case 5: {
                return this.createConstantSpecificationMappingSet();
            }
            case 6: {
                return this.createNumericalValueSpecification();
            }
            case 7: {
                return this.createRecordValueSpecification();
            }
            case 8: {
                return this.createReferenceValueSpecification();
            }
            case 9: {
                return this.createTextValueSpecification();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ApplicationValueSpecification createApplicationValueSpecification() {
        ApplicationValueSpecificationImpl applicationValueSpecification = new ApplicationValueSpecificationImpl();
        return applicationValueSpecification;
    }

    public ArrayValueSpecification createArrayValueSpecification() {
        ArrayValueSpecificationImpl arrayValueSpecification = new ArrayValueSpecificationImpl();
        return arrayValueSpecification;
    }

    public ConstantReference createConstantReference() {
        ConstantReferenceImpl constantReference = new ConstantReferenceImpl();
        return constantReference;
    }

    public ConstantSpecification createConstantSpecification() {
        ConstantSpecificationImpl constantSpecification = new ConstantSpecificationImpl();
        return constantSpecification;
    }

    public ConstantSpecificationMapping createConstantSpecificationMapping() {
        ConstantSpecificationMappingImpl constantSpecificationMapping = new ConstantSpecificationMappingImpl();
        return constantSpecificationMapping;
    }

    public ConstantSpecificationMappingSet createConstantSpecificationMappingSet() {
        ConstantSpecificationMappingSetImpl constantSpecificationMappingSet = new ConstantSpecificationMappingSetImpl();
        return constantSpecificationMappingSet;
    }

    public NumericalValueSpecification createNumericalValueSpecification() {
        NumericalValueSpecificationImpl numericalValueSpecification = new NumericalValueSpecificationImpl();
        return numericalValueSpecification;
    }

    public RecordValueSpecification createRecordValueSpecification() {
        RecordValueSpecificationImpl recordValueSpecification = new RecordValueSpecificationImpl();
        return recordValueSpecification;
    }

    public ReferenceValueSpecification createReferenceValueSpecification() {
        ReferenceValueSpecificationImpl referenceValueSpecification = new ReferenceValueSpecificationImpl();
        return referenceValueSpecification;
    }

    public TextValueSpecification createTextValueSpecification() {
        TextValueSpecificationImpl textValueSpecification = new TextValueSpecificationImpl();
        return textValueSpecification;
    }

    public ConstantsPackage getConstantsPackage() {
        return (ConstantsPackage)this.getEPackage();
    }

    @Deprecated
    public static ConstantsPackage getPackage() {
        return ConstantsPackage.eINSTANCE;
    }
}

