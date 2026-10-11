/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.datatype.datatypes.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.datatype.datatypes.ARLimit;
import autosar21.swcomponent.datatype.datatypes.ArrayElement;
import autosar21.swcomponent.datatype.datatypes.ArrayType;
import autosar21.swcomponent.datatype.datatypes.BooleanType;
import autosar21.swcomponent.datatype.datatypes.CharType;
import autosar21.swcomponent.datatype.datatypes.CompositeType;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.datatype.datatypes.Datatype;
import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.datatypes.IntegerType;
import autosar21.swcomponent.datatype.datatypes.OpaqueType;
import autosar21.swcomponent.datatype.datatypes.PrimitiveType;
import autosar21.swcomponent.datatype.datatypes.Range;
import autosar21.swcomponent.datatype.datatypes.RealType;
import autosar21.swcomponent.datatype.datatypes.RecordElement;
import autosar21.swcomponent.datatype.datatypes.RecordType;
import autosar21.swcomponent.datatype.datatypes.StringType;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DatatypesSwitch<T> {
    protected static DatatypesPackage modelPackage;

    public DatatypesSwitch() {
        if (modelPackage == null) {
            modelPackage = DatatypesPackage.eINSTANCE;
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
                ARLimit arLimit = (ARLimit)theEObject;
                T result = this.caseARLimit(arLimit);
                if (result == null) {
                    result = this.caseARObject(arLimit);
                }
                if (result == null) {
                    result = this.caseGARLimit(arLimit);
                }
                if (result == null) {
                    result = this.caseGAbstractLimit((GAbstractLimit)arLimit);
                }
                if (result == null) {
                    result = this.caseGARObject(arLimit);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ArrayElement arrayElement = (ArrayElement)theEObject;
                T result = this.caseArrayElement(arrayElement);
                if (result == null) {
                    result = this.caseDataPrototype(arrayElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(arrayElement);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(arrayElement);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(arrayElement);
                }
                if (result == null) {
                    result = this.caseARObject(arrayElement);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(arrayElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(arrayElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)arrayElement);
                }
                if (result == null) {
                    result = this.caseGARObject(arrayElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                BooleanType booleanType = (BooleanType)theEObject;
                T result = this.caseBooleanType(booleanType);
                if (result == null) {
                    result = this.casePrimitiveType(booleanType);
                }
                if (result == null) {
                    result = this.caseDatatype(booleanType);
                }
                if (result == null) {
                    result = this.caseGApplicationPrimitiveDataType(booleanType);
                }
                if (result == null) {
                    result = this.caseARElement(booleanType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(booleanType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(booleanType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)booleanType);
                }
                if (result == null) {
                    result = this.casePackageableElement(booleanType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(booleanType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(booleanType);
                }
                if (result == null) {
                    result = this.caseARObject(booleanType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(booleanType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)booleanType);
                }
                if (result == null) {
                    result = this.caseGARObject(booleanType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PrimitiveType primitiveType = (PrimitiveType)theEObject;
                T result = this.casePrimitiveType(primitiveType);
                if (result == null) {
                    result = this.caseDatatype(primitiveType);
                }
                if (result == null) {
                    result = this.caseGApplicationPrimitiveDataType(primitiveType);
                }
                if (result == null) {
                    result = this.caseARElement(primitiveType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(primitiveType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(primitiveType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)primitiveType);
                }
                if (result == null) {
                    result = this.casePackageableElement(primitiveType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(primitiveType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(primitiveType);
                }
                if (result == null) {
                    result = this.caseARObject(primitiveType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(primitiveType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)primitiveType);
                }
                if (result == null) {
                    result = this.caseGARObject(primitiveType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                Datatype datatype = (Datatype)theEObject;
                T result = this.caseDatatype(datatype);
                if (result == null) {
                    result = this.caseARElement(datatype);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(datatype);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(datatype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)datatype);
                }
                if (result == null) {
                    result = this.casePackageableElement(datatype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(datatype);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(datatype);
                }
                if (result == null) {
                    result = this.caseARObject(datatype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(datatype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)datatype);
                }
                if (result == null) {
                    result = this.caseGARObject(datatype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                CompositeType compositeType = (CompositeType)theEObject;
                T result = this.caseCompositeType(compositeType);
                if (result == null) {
                    result = this.caseDatatype(compositeType);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeDataType(compositeType);
                }
                if (result == null) {
                    result = this.caseARElement(compositeType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(compositeType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(compositeType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)compositeType);
                }
                if (result == null) {
                    result = this.casePackageableElement(compositeType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(compositeType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(compositeType);
                }
                if (result == null) {
                    result = this.caseARObject(compositeType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(compositeType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)compositeType);
                }
                if (result == null) {
                    result = this.caseGARObject(compositeType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                OpaqueType opaqueType = (OpaqueType)theEObject;
                T result = this.caseOpaqueType(opaqueType);
                if (result == null) {
                    result = this.casePrimitiveType(opaqueType);
                }
                if (result == null) {
                    result = this.caseDatatype(opaqueType);
                }
                if (result == null) {
                    result = this.caseGApplicationPrimitiveDataType(opaqueType);
                }
                if (result == null) {
                    result = this.caseARElement(opaqueType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(opaqueType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(opaqueType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)opaqueType);
                }
                if (result == null) {
                    result = this.casePackageableElement(opaqueType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(opaqueType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(opaqueType);
                }
                if (result == null) {
                    result = this.caseARObject(opaqueType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(opaqueType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)opaqueType);
                }
                if (result == null) {
                    result = this.caseGARObject(opaqueType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                Range range = (Range)theEObject;
                T result = this.caseRange(range);
                if (result == null) {
                    result = this.caseARObject(range);
                }
                if (result == null) {
                    result = this.caseGARObject(range);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                RecordElement recordElement = (RecordElement)theEObject;
                T result = this.caseRecordElement(recordElement);
                if (result == null) {
                    result = this.caseDataPrototype(recordElement);
                }
                if (result == null) {
                    result = this.caseGApplicationRecordElement(recordElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(recordElement);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(recordElement);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(recordElement);
                }
                if (result == null) {
                    result = this.caseARObject(recordElement);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(recordElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(recordElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)recordElement);
                }
                if (result == null) {
                    result = this.caseGARObject(recordElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                StringType stringType = (StringType)theEObject;
                T result = this.caseStringType(stringType);
                if (result == null) {
                    result = this.casePrimitiveType(stringType);
                }
                if (result == null) {
                    result = this.caseDatatype(stringType);
                }
                if (result == null) {
                    result = this.caseGApplicationPrimitiveDataType(stringType);
                }
                if (result == null) {
                    result = this.caseARElement(stringType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(stringType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(stringType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)stringType);
                }
                if (result == null) {
                    result = this.casePackageableElement(stringType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(stringType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(stringType);
                }
                if (result == null) {
                    result = this.caseARObject(stringType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(stringType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)stringType);
                }
                if (result == null) {
                    result = this.caseGARObject(stringType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                IntegerType integerType = (IntegerType)theEObject;
                T result = this.caseIntegerType(integerType);
                if (result == null) {
                    result = this.casePrimitiveType(integerType);
                }
                if (result == null) {
                    result = this.caseRange(integerType);
                }
                if (result == null) {
                    result = this.caseDatatype(integerType);
                }
                if (result == null) {
                    result = this.caseGApplicationPrimitiveDataType(integerType);
                }
                if (result == null) {
                    result = this.caseARElement(integerType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(integerType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(integerType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)integerType);
                }
                if (result == null) {
                    result = this.casePackageableElement(integerType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(integerType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(integerType);
                }
                if (result == null) {
                    result = this.caseARObject(integerType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(integerType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)integerType);
                }
                if (result == null) {
                    result = this.caseGARObject(integerType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                RealType realType = (RealType)theEObject;
                T result = this.caseRealType(realType);
                if (result == null) {
                    result = this.casePrimitiveType(realType);
                }
                if (result == null) {
                    result = this.caseRange(realType);
                }
                if (result == null) {
                    result = this.caseDatatype(realType);
                }
                if (result == null) {
                    result = this.caseGApplicationPrimitiveDataType(realType);
                }
                if (result == null) {
                    result = this.caseARElement(realType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(realType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(realType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)realType);
                }
                if (result == null) {
                    result = this.casePackageableElement(realType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(realType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(realType);
                }
                if (result == null) {
                    result = this.caseARObject(realType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(realType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)realType);
                }
                if (result == null) {
                    result = this.caseGARObject(realType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                CharType charType = (CharType)theEObject;
                T result = this.caseCharType(charType);
                if (result == null) {
                    result = this.casePrimitiveType(charType);
                }
                if (result == null) {
                    result = this.caseDatatype(charType);
                }
                if (result == null) {
                    result = this.caseGApplicationPrimitiveDataType(charType);
                }
                if (result == null) {
                    result = this.caseARElement(charType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(charType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(charType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)charType);
                }
                if (result == null) {
                    result = this.casePackageableElement(charType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(charType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(charType);
                }
                if (result == null) {
                    result = this.caseARObject(charType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(charType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)charType);
                }
                if (result == null) {
                    result = this.caseGARObject(charType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                ArrayType arrayType = (ArrayType)theEObject;
                T result = this.caseArrayType(arrayType);
                if (result == null) {
                    result = this.caseCompositeType(arrayType);
                }
                if (result == null) {
                    result = this.caseDatatype(arrayType);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeDataType(arrayType);
                }
                if (result == null) {
                    result = this.caseARElement(arrayType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(arrayType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(arrayType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)arrayType);
                }
                if (result == null) {
                    result = this.casePackageableElement(arrayType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(arrayType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(arrayType);
                }
                if (result == null) {
                    result = this.caseARObject(arrayType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(arrayType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)arrayType);
                }
                if (result == null) {
                    result = this.caseGARObject(arrayType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                RecordType recordType = (RecordType)theEObject;
                T result = this.caseRecordType(recordType);
                if (result == null) {
                    result = this.caseCompositeType(recordType);
                }
                if (result == null) {
                    result = this.caseGApplicationRecordDataType(recordType);
                }
                if (result == null) {
                    result = this.caseDatatype(recordType);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeDataType(recordType);
                }
                if (result == null) {
                    result = this.caseARElement(recordType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(recordType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(recordType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType((GAutosarDataType)recordType);
                }
                if (result == null) {
                    result = this.casePackageableElement(recordType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(recordType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(recordType);
                }
                if (result == null) {
                    result = this.caseARObject(recordType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(recordType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)recordType);
                }
                if (result == null) {
                    result = this.caseGARObject(recordType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                DataPrototype dataPrototype = (DataPrototype)theEObject;
                T result = this.caseDataPrototype(dataPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(dataPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(dataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseARLimit(ARLimit object) {
        return null;
    }

    public T caseArrayElement(ArrayElement object) {
        return null;
    }

    public T caseBooleanType(BooleanType object) {
        return null;
    }

    public T casePrimitiveType(PrimitiveType object) {
        return null;
    }

    public T caseDatatype(Datatype object) {
        return null;
    }

    public T caseCompositeType(CompositeType object) {
        return null;
    }

    public T caseOpaqueType(OpaqueType object) {
        return null;
    }

    public T caseRange(Range object) {
        return null;
    }

    public T caseRecordElement(RecordElement object) {
        return null;
    }

    public T caseStringType(StringType object) {
        return null;
    }

    public T caseIntegerType(IntegerType object) {
        return null;
    }

    public T caseRealType(RealType object) {
        return null;
    }

    public T caseCharType(CharType object) {
        return null;
    }

    public T caseArrayType(ArrayType object) {
        return null;
    }

    public T caseRecordType(RecordType object) {
        return null;
    }

    public T caseDataPrototype(DataPrototype object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGAbstractLimit(GAbstractLimit object) {
        return null;
    }

    public T caseGARLimit(GARLimit object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseGAutosarDataType(GAutosarDataType object) {
        return null;
    }

    public T caseGApplicationDataType(GApplicationDataType object) {
        return null;
    }

    public T caseGApplicationPrimitiveDataType(GApplicationPrimitiveDataType object) {
        return null;
    }

    public T caseGApplicationCompositeDataType(GApplicationCompositeDataType object) {
        return null;
    }

    public T caseGApplicationRecordElement(GApplicationRecordElement object) {
        return null;
    }

    public T caseGApplicationRecordDataType(GApplicationRecordDataType object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

