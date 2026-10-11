/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.ParameterInAtomicSWCTypeInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.VariableInAtomicSWCTypeInstanceRef;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefsusageSwitch<T> {
    protected static InstancerefsusagePackage modelPackage;

    public InstancerefsusageSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefsusagePackage.eINSTANCE;
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
                VariableInAtomicSWCTypeInstanceRef variableInAtomicSWCTypeInstanceRef = (VariableInAtomicSWCTypeInstanceRef)theEObject;
                T result = this.caseVariableInAtomicSWCTypeInstanceRef(variableInAtomicSWCTypeInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(variableInAtomicSWCTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef(variableInAtomicSWCTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(variableInAtomicSWCTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(variableInAtomicSWCTypeInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ParameterInAtomicSWCTypeInstanceRef parameterInAtomicSWCTypeInstanceRef = (ParameterInAtomicSWCTypeInstanceRef)theEObject;
                T result = this.caseParameterInAtomicSWCTypeInstanceRef(parameterInAtomicSWCTypeInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(parameterInAtomicSWCTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseGParameterInAtomicSwcIRef(parameterInAtomicSWCTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(parameterInAtomicSWCTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(parameterInAtomicSWCTypeInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseVariableInAtomicSWCTypeInstanceRef(VariableInAtomicSWCTypeInstanceRef object) {
        return null;
    }

    public T caseParameterInAtomicSWCTypeInstanceRef(ParameterInAtomicSWCTypeInstanceRef object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseAtpInstanceRef(AtpInstanceRef object) {
        return null;
    }

    public T caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGParameterInAtomicSwcIRef(GParameterInAtomicSwcIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

