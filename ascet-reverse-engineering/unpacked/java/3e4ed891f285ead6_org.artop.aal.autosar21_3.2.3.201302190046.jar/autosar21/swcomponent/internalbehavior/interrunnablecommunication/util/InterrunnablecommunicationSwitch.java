/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.interrunnablecommunication.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterRunnableVariable;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InterrunnablecommunicationSwitch<T> {
    protected static InterrunnablecommunicationPackage modelPackage;

    public InterrunnablecommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = InterrunnablecommunicationPackage.eINSTANCE;
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
                InterRunnableVariable interRunnableVariable = (InterRunnableVariable)theEObject;
                T result = this.caseInterRunnableVariable(interRunnableVariable);
                if (result == null) {
                    result = this.caseDataPrototype(interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseGVariableDataPrototype(interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseIdentifiable(interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseARObject(interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)interRunnableVariable);
                }
                if (result == null) {
                    result = this.caseGARObject(interRunnableVariable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseInterRunnableVariable(InterRunnableVariable object) {
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

    public T caseGVariableDataPrototype(GVariableDataPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

