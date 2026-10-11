/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GdatatypesSwitch<T> {
    protected static GdatatypesPackage modelPackage;

    public GdatatypesSwitch() {
        if (modelPackage == null) {
            modelPackage = GdatatypesPackage.eINSTANCE;
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
                GApplicationDataType gApplicationDataType = (GApplicationDataType)theEObject;
                T result = this.caseGApplicationDataType(gApplicationDataType);
                if (result == null) {
                    result = this.caseGAutosarDataType(gApplicationDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gApplicationDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gApplicationDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gApplicationDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(gApplicationDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GAutosarDataType gAutosarDataType = (GAutosarDataType)theEObject;
                T result = this.caseGAutosarDataType(gAutosarDataType);
                if (result == null) {
                    result = this.caseGPackageableElement(gAutosarDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gAutosarDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gAutosarDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(gAutosarDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GApplicationPrimitiveDataType gApplicationPrimitiveDataType = (GApplicationPrimitiveDataType)theEObject;
                T result = this.caseGApplicationPrimitiveDataType(gApplicationPrimitiveDataType);
                if (result == null) {
                    result = this.caseGApplicationDataType(gApplicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(gApplicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gApplicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gApplicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gApplicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(gApplicationPrimitiveDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GARLimit garLimit = (GARLimit)theEObject;
                T result = this.caseGARLimit(garLimit);
                if (result == null) {
                    result = this.caseGAbstractLimit(garLimit);
                }
                if (result == null) {
                    result = this.caseGARObject(garLimit);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GApplicationRecordDataType gApplicationRecordDataType = (GApplicationRecordDataType)theEObject;
                T result = this.caseGApplicationRecordDataType(gApplicationRecordDataType);
                if (result == null) {
                    result = this.caseGApplicationCompositeDataType(gApplicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGApplicationDataType(gApplicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(gApplicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gApplicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gApplicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gApplicationRecordDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(gApplicationRecordDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GApplicationCompositeDataType gApplicationCompositeDataType = (GApplicationCompositeDataType)theEObject;
                T result = this.caseGApplicationCompositeDataType(gApplicationCompositeDataType);
                if (result == null) {
                    result = this.caseGApplicationDataType(gApplicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGAutosarDataType(gApplicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gApplicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gApplicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gApplicationCompositeDataType);
                }
                if (result == null) {
                    result = this.caseGARObject(gApplicationCompositeDataType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGApplicationDataType(GApplicationDataType object) {
        return null;
    }

    public T caseGAutosarDataType(GAutosarDataType object) {
        return null;
    }

    public T caseGApplicationPrimitiveDataType(GApplicationPrimitiveDataType object) {
        return null;
    }

    public T caseGARLimit(GARLimit object) {
        return null;
    }

    public T caseGApplicationRecordDataType(GApplicationRecordDataType object) {
        return null;
    }

    public T caseGApplicationCompositeDataType(GApplicationCompositeDataType object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T caseGAbstractLimit(GAbstractLimit object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

