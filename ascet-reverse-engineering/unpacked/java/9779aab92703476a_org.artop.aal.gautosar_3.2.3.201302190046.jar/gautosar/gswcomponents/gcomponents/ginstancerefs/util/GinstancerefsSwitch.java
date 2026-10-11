/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GinstancerefsSwitch<T> {
    protected static GinstancerefsPackage modelPackage;

    public GinstancerefsSwitch() {
        if (modelPackage == null) {
            modelPackage = GinstancerefsPackage.eINSTANCE;
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
                GVariableInAtomicSwcIRef gVariableInAtomicSwcIRef = (GVariableInAtomicSwcIRef)theEObject;
                T result = this.caseGVariableInAtomicSwcIRef(gVariableInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGARObject(gVariableInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GRVariableInAtomicSwcIRef grVariableInAtomicSwcIRef = (GRVariableInAtomicSwcIRef)theEObject;
                T result = this.caseGRVariableInAtomicSwcIRef(grVariableInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef(grVariableInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.caseGARObject(grVariableInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GPVariableInAtomicSwcIRef gpVariableInAtomicSwcIRef = (GPVariableInAtomicSwcIRef)theEObject;
                T result = this.caseGPVariableInAtomicSwcIRef(gpVariableInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef(gpVariableInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.caseGARObject(gpVariableInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GOperationInAtomicSwcIRef gOperationInAtomicSwcIRef = (GOperationInAtomicSwcIRef)theEObject;
                T result = this.caseGOperationInAtomicSwcIRef(gOperationInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGARObject(gOperationInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GROperationInAtomicSwcIRef grOperationInAtomicSwcIRef = (GROperationInAtomicSwcIRef)theEObject;
                T result = this.caseGROperationInAtomicSwcIRef(grOperationInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGOperationInAtomicSwcIRef(grOperationInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.caseGARObject(grOperationInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GPOperationInAtomicSwcIRef gpOperationInAtomicSwcIRef = (GPOperationInAtomicSwcIRef)theEObject;
                T result = this.caseGPOperationInAtomicSwcIRef(gpOperationInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGOperationInAtomicSwcIRef(gpOperationInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.caseGARObject(gpOperationInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GModeGroupInAtomicSwcIRef gModeGroupInAtomicSwcIRef = (GModeGroupInAtomicSwcIRef)theEObject;
                T result = this.caseGModeGroupInAtomicSwcIRef(gModeGroupInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGARObject(gModeGroupInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                GRModeGroupInAtomicSwcIRef grModeGroupInAtomicSwcIRef = (GRModeGroupInAtomicSwcIRef)theEObject;
                T result = this.caseGRModeGroupInAtomicSwcIRef(grModeGroupInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGModeGroupInAtomicSwcIRef(grModeGroupInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.caseGARObject(grModeGroupInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                GPModeGroupInAtomicSwcIRef gpModeGroupInAtomicSwcIRef = (GPModeGroupInAtomicSwcIRef)theEObject;
                T result = this.caseGPModeGroupInAtomicSwcIRef(gpModeGroupInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGModeGroupInAtomicSwcIRef(gpModeGroupInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.caseGARObject(gpModeGroupInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                GParameterInAtomicSwcIRef gParameterInAtomicSwcIRef = (GParameterInAtomicSwcIRef)theEObject;
                T result = this.caseGParameterInAtomicSwcIRef(gParameterInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGARObject(gParameterInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                GRModeInAtomicSwcIRef grModeInAtomicSwcIRef = (GRModeInAtomicSwcIRef)theEObject;
                T result = this.caseGRModeInAtomicSwcIRef(grModeInAtomicSwcIRef);
                if (result == null) {
                    result = this.caseGARObject(grModeInAtomicSwcIRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPVariableInAtomicSwcIRef(GPVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef object) {
        return null;
    }

    public T caseGROperationInAtomicSwcIRef(GROperationInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPOperationInAtomicSwcIRef(GPOperationInAtomicSwcIRef object) {
        return null;
    }

    public T caseGModeGroupInAtomicSwcIRef(GModeGroupInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRModeGroupInAtomicSwcIRef(GRModeGroupInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPModeGroupInAtomicSwcIRef(GPModeGroupInAtomicSwcIRef object) {
        return null;
    }

    public T caseGParameterInAtomicSwcIRef(GParameterInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRModeInAtomicSwcIRef(GRModeInAtomicSwcIRef object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

