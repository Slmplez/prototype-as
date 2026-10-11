/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gdataprototypes.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GdataprototypesSwitch<T> {
    protected static GdataprototypesPackage modelPackage;

    public GdataprototypesSwitch() {
        if (modelPackage == null) {
            modelPackage = GdataprototypesPackage.eINSTANCE;
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
                GAutosarDataPrototype gAutosarDataPrototype = (GAutosarDataPrototype)theEObject;
                T result = this.caseGAutosarDataPrototype(gAutosarDataPrototype);
                if (result == null) {
                    result = this.caseGDataPrototype(gAutosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gAutosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gAutosarDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gAutosarDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GDataPrototype gDataPrototype = (GDataPrototype)theEObject;
                T result = this.caseGDataPrototype(gDataPrototype);
                if (result == null) {
                    result = this.caseGIdentifiable(gDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GParameterDataPrototype gParameterDataPrototype = (GParameterDataPrototype)theEObject;
                T result = this.caseGParameterDataPrototype(gParameterDataPrototype);
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(gParameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(gParameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gParameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gParameterDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gParameterDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GVariableDataPrototype gVariableDataPrototype = (GVariableDataPrototype)theEObject;
                T result = this.caseGVariableDataPrototype(gVariableDataPrototype);
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(gVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(gVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gVariableDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GApplicationRecordElement gApplicationRecordElement = (GApplicationRecordElement)theEObject;
                T result = this.caseGApplicationRecordElement(gApplicationRecordElement);
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(gApplicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(gApplicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gApplicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(gApplicationRecordElement);
                }
                if (result == null) {
                    result = this.caseGARObject(gApplicationRecordElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GApplicationCompositeElementDataPrototype gApplicationCompositeElementDataPrototype = (GApplicationCompositeElementDataPrototype)theEObject;
                T result = this.caseGApplicationCompositeElementDataPrototype(gApplicationCompositeElementDataPrototype);
                if (result == null) {
                    result = this.caseGDataPrototype(gApplicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gApplicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gApplicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gApplicationCompositeElementDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype object) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype object) {
        return null;
    }

    public T caseGParameterDataPrototype(GParameterDataPrototype object) {
        return null;
    }

    public T caseGVariableDataPrototype(GVariableDataPrototype object) {
        return null;
    }

    public T caseGApplicationRecordElement(GApplicationRecordElement object) {
        return null;
    }

    public T caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

