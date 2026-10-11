/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.datatype.constants.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.datatype.constants.ArraySpecification;
import autosar3x.swcomponent.datatype.constants.BooleanLiteral;
import autosar3x.swcomponent.datatype.constants.CharLiteral;
import autosar3x.swcomponent.datatype.constants.ConstantReference;
import autosar3x.swcomponent.datatype.constants.ConstantSpecification;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.IntegerLiteral;
import autosar3x.swcomponent.datatype.constants.OpaqueLiteral;
import autosar3x.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar3x.swcomponent.datatype.constants.RealLiteral;
import autosar3x.swcomponent.datatype.constants.RecordSpecification;
import autosar3x.swcomponent.datatype.constants.StringLiteral;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstantsSwitch<T> {
    protected static ConstantsPackage modelPackage;

    public ConstantsSwitch() {
        if (modelPackage == null) {
            modelPackage = ConstantsPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                ArraySpecification arraySpecification = (ArraySpecification)theEObject;
                T result = this.caseArraySpecification(arraySpecification);
                if (result == null) {
                    result = this.caseValueSpecification(arraySpecification);
                }
                if (result == null) {
                    result = this.caseDataPrototype(arraySpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(arraySpecification);
                }
                if (result == null) {
                    result = this.caseIdentifiable(arraySpecification);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(arraySpecification);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(arraySpecification);
                }
                if (result == null) {
                    result = this.caseARObject(arraySpecification);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(arraySpecification);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(arraySpecification);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)arraySpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(arraySpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ValueSpecification valueSpecification = (ValueSpecification)theEObject;
                T result = this.caseValueSpecification(valueSpecification);
                if (result == null) {
                    result = this.caseDataPrototype(valueSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(valueSpecification);
                }
                if (result == null) {
                    result = this.caseIdentifiable(valueSpecification);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(valueSpecification);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(valueSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(valueSpecification);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(valueSpecification);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(valueSpecification);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)valueSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(valueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                BooleanLiteral booleanLiteral = (BooleanLiteral)theEObject;
                T result = this.caseBooleanLiteral(booleanLiteral);
                if (result == null) {
                    result = this.casePrimitiveSpecification(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseValueSpecification(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseDataPrototype(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseARObject(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(booleanLiteral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)booleanLiteral);
                }
                if (result == null) {
                    result = this.caseGARObject(booleanLiteral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CharLiteral charLiteral = (CharLiteral)theEObject;
                T result = this.caseCharLiteral(charLiteral);
                if (result == null) {
                    result = this.casePrimitiveSpecification(charLiteral);
                }
                if (result == null) {
                    result = this.caseValueSpecification(charLiteral);
                }
                if (result == null) {
                    result = this.caseDataPrototype(charLiteral);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(charLiteral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(charLiteral);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(charLiteral);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(charLiteral);
                }
                if (result == null) {
                    result = this.caseARObject(charLiteral);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(charLiteral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(charLiteral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)charLiteral);
                }
                if (result == null) {
                    result = this.caseGARObject(charLiteral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ConstantReference constantReference = (ConstantReference)theEObject;
                T result = this.caseConstantReference(constantReference);
                if (result == null) {
                    result = this.caseValueSpecification(constantReference);
                }
                if (result == null) {
                    result = this.caseDataPrototype(constantReference);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(constantReference);
                }
                if (result == null) {
                    result = this.caseIdentifiable(constantReference);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(constantReference);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(constantReference);
                }
                if (result == null) {
                    result = this.caseARObject(constantReference);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(constantReference);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(constantReference);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)constantReference);
                }
                if (result == null) {
                    result = this.caseGARObject(constantReference);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ConstantSpecification constantSpecification = (ConstantSpecification)theEObject;
                T result = this.caseConstantSpecification(constantSpecification);
                if (result == null) {
                    result = this.caseARElement(constantSpecification);
                }
                if (result == null) {
                    result = this.casePackageableElement(constantSpecification);
                }
                if (result == null) {
                    result = this.caseIdentifiable(constantSpecification);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(constantSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(constantSpecification);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(constantSpecification);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)constantSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(constantSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                IntegerLiteral integerLiteral = (IntegerLiteral)theEObject;
                T result = this.caseIntegerLiteral(integerLiteral);
                if (result == null) {
                    result = this.casePrimitiveSpecification(integerLiteral);
                }
                if (result == null) {
                    result = this.caseValueSpecification(integerLiteral);
                }
                if (result == null) {
                    result = this.caseDataPrototype(integerLiteral);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(integerLiteral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(integerLiteral);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(integerLiteral);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(integerLiteral);
                }
                if (result == null) {
                    result = this.caseARObject(integerLiteral);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(integerLiteral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(integerLiteral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)integerLiteral);
                }
                if (result == null) {
                    result = this.caseGARObject(integerLiteral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                OpaqueLiteral opaqueLiteral = (OpaqueLiteral)theEObject;
                T result = this.caseOpaqueLiteral(opaqueLiteral);
                if (result == null) {
                    result = this.casePrimitiveSpecification(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseValueSpecification(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseDataPrototype(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseARObject(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)opaqueLiteral);
                }
                if (result == null) {
                    result = this.caseGARObject(opaqueLiteral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                RealLiteral realLiteral = (RealLiteral)theEObject;
                T result = this.caseRealLiteral(realLiteral);
                if (result == null) {
                    result = this.casePrimitiveSpecification(realLiteral);
                }
                if (result == null) {
                    result = this.caseValueSpecification(realLiteral);
                }
                if (result == null) {
                    result = this.caseDataPrototype(realLiteral);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(realLiteral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(realLiteral);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(realLiteral);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(realLiteral);
                }
                if (result == null) {
                    result = this.caseARObject(realLiteral);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(realLiteral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(realLiteral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)realLiteral);
                }
                if (result == null) {
                    result = this.caseGARObject(realLiteral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                RecordSpecification recordSpecification = (RecordSpecification)theEObject;
                T result = this.caseRecordSpecification(recordSpecification);
                if (result == null) {
                    result = this.caseValueSpecification(recordSpecification);
                }
                if (result == null) {
                    result = this.caseDataPrototype(recordSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(recordSpecification);
                }
                if (result == null) {
                    result = this.caseIdentifiable(recordSpecification);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(recordSpecification);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(recordSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(recordSpecification);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(recordSpecification);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(recordSpecification);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)recordSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(recordSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                StringLiteral stringLiteral = (StringLiteral)theEObject;
                T result = this.caseStringLiteral(stringLiteral);
                if (result == null) {
                    result = this.casePrimitiveSpecification(stringLiteral);
                }
                if (result == null) {
                    result = this.caseValueSpecification(stringLiteral);
                }
                if (result == null) {
                    result = this.caseDataPrototype(stringLiteral);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(stringLiteral);
                }
                if (result == null) {
                    result = this.caseIdentifiable(stringLiteral);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(stringLiteral);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(stringLiteral);
                }
                if (result == null) {
                    result = this.caseARObject(stringLiteral);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(stringLiteral);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(stringLiteral);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)stringLiteral);
                }
                if (result == null) {
                    result = this.caseGARObject(stringLiteral);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                PrimitiveSpecification primitiveSpecification = (PrimitiveSpecification)theEObject;
                T result = this.casePrimitiveSpecification(primitiveSpecification);
                if (result == null) {
                    result = this.caseValueSpecification(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseDataPrototype(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseGValueSpecification(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseIdentifiable(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseARObject(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)primitiveSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(primitiveSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseArraySpecification(ArraySpecification object) {
        return null;
    }

    public T caseValueSpecification(ValueSpecification object) {
        return null;
    }

    public T caseBooleanLiteral(BooleanLiteral object) {
        return null;
    }

    public T caseCharLiteral(CharLiteral object) {
        return null;
    }

    public T caseConstantReference(ConstantReference object) {
        return null;
    }

    public T caseConstantSpecification(ConstantSpecification object) {
        return null;
    }

    public T caseIntegerLiteral(IntegerLiteral object) {
        return null;
    }

    public T caseOpaqueLiteral(OpaqueLiteral object) {
        return null;
    }

    public T caseRealLiteral(RealLiteral object) {
        return null;
    }

    public T caseRecordSpecification(RecordSpecification object) {
        return null;
    }

    public T caseStringLiteral(StringLiteral object) {
        return null;
    }

    public T casePrimitiveSpecification(PrimitiveSpecification object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype object) {
        return null;
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype object) {
        return null;
    }

    public T caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
        return null;
    }

    public T caseDataPrototype(DataPrototype object) {
        return null;
    }

    public T caseGValueSpecification(GValueSpecification object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

