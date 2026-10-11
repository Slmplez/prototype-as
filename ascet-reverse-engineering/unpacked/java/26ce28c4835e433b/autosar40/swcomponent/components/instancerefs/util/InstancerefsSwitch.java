/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.components.instancerefs.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.components.instancerefs.InnerPortGroupInCompositionInstanceRef;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.ModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.OperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.PModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.POperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.PTriggerInAtomicSwcTypeInstanceRef;
import autosar40.swcomponent.components.instancerefs.PVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeGroupInAtomicSWCInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.ROperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RTriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.TriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.VariableInAtomicSwcInstanceRef;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefsSwitch<T> {
    protected static InstancerefsPackage modelPackage;

    public InstancerefsSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefsPackage.eINSTANCE;
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
                ModeGroupInAtomicSwcInstanceRef modeGroupInAtomicSwcInstanceRef = (ModeGroupInAtomicSwcInstanceRef)theEObject;
                T result = this.caseModeGroupInAtomicSwcInstanceRef(modeGroupInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(modeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGModeGroupInAtomicSwcIRef(modeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(modeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(modeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                OperationInAtomicSwcInstanceRef operationInAtomicSwcInstanceRef = (OperationInAtomicSwcInstanceRef)theEObject;
                T result = this.caseOperationInAtomicSwcInstanceRef(operationInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(operationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGOperationInAtomicSwcIRef(operationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(operationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(operationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                PModeGroupInAtomicSwcInstanceRef pModeGroupInAtomicSwcInstanceRef = (PModeGroupInAtomicSwcInstanceRef)theEObject;
                T result = this.casePModeGroupInAtomicSwcInstanceRef(pModeGroupInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseModeGroupInAtomicSwcInstanceRef(pModeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGPModeGroupInAtomicSwcIRef(pModeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(pModeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGModeGroupInAtomicSwcIRef(pModeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(pModeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(pModeGroupInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                POperationInAtomicSwcInstanceRef pOperationInAtomicSwcInstanceRef = (POperationInAtomicSwcInstanceRef)theEObject;
                T result = this.casePOperationInAtomicSwcInstanceRef(pOperationInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseOperationInAtomicSwcInstanceRef(pOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGPOperationInAtomicSwcIRef(pOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(pOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGOperationInAtomicSwcIRef(pOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(pOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(pOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                PTriggerInAtomicSwcTypeInstanceRef pTriggerInAtomicSwcTypeInstanceRef = (PTriggerInAtomicSwcTypeInstanceRef)theEObject;
                T result = this.casePTriggerInAtomicSwcTypeInstanceRef(pTriggerInAtomicSwcTypeInstanceRef);
                if (result == null) {
                    result = this.caseTriggerInAtomicSwcInstanceRef(pTriggerInAtomicSwcTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(pTriggerInAtomicSwcTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(pTriggerInAtomicSwcTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(pTriggerInAtomicSwcTypeInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                TriggerInAtomicSwcInstanceRef triggerInAtomicSwcInstanceRef = (TriggerInAtomicSwcInstanceRef)theEObject;
                T result = this.caseTriggerInAtomicSwcInstanceRef(triggerInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(triggerInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(triggerInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(triggerInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PVariableInAtomicSwcInstanceRef pVariableInAtomicSwcInstanceRef = (PVariableInAtomicSwcInstanceRef)theEObject;
                T result = this.casePVariableInAtomicSwcInstanceRef(pVariableInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseVariableInAtomicSwcInstanceRef(pVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGPVariableInAtomicSwcIRef(pVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(pVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef(pVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(pVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(pVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                VariableInAtomicSwcInstanceRef variableInAtomicSwcInstanceRef = (VariableInAtomicSwcInstanceRef)theEObject;
                T result = this.caseVariableInAtomicSwcInstanceRef(variableInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(variableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef(variableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(variableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(variableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                RModeGroupInAtomicSWCInstanceRef rModeGroupInAtomicSWCInstanceRef = (RModeGroupInAtomicSWCInstanceRef)theEObject;
                T result = this.caseRModeGroupInAtomicSWCInstanceRef(rModeGroupInAtomicSWCInstanceRef);
                if (result == null) {
                    result = this.caseModeGroupInAtomicSwcInstanceRef(rModeGroupInAtomicSWCInstanceRef);
                }
                if (result == null) {
                    result = this.caseGRModeGroupInAtomicSwcIRef(rModeGroupInAtomicSWCInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(rModeGroupInAtomicSWCInstanceRef);
                }
                if (result == null) {
                    result = this.caseGModeGroupInAtomicSwcIRef(rModeGroupInAtomicSWCInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(rModeGroupInAtomicSWCInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(rModeGroupInAtomicSWCInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                RModeInAtomicSwcInstanceRef rModeInAtomicSwcInstanceRef = (RModeInAtomicSwcInstanceRef)theEObject;
                T result = this.caseRModeInAtomicSwcInstanceRef(rModeInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(rModeInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGRModeInAtomicSwcIRef(rModeInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(rModeInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(rModeInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                ROperationInAtomicSwcInstanceRef rOperationInAtomicSwcInstanceRef = (ROperationInAtomicSwcInstanceRef)theEObject;
                T result = this.caseROperationInAtomicSwcInstanceRef(rOperationInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseOperationInAtomicSwcInstanceRef(rOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGROperationInAtomicSwcIRef(rOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(rOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGOperationInAtomicSwcIRef(rOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(rOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(rOperationInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                RTriggerInAtomicSwcInstanceRef rTriggerInAtomicSwcInstanceRef = (RTriggerInAtomicSwcInstanceRef)theEObject;
                T result = this.caseRTriggerInAtomicSwcInstanceRef(rTriggerInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseTriggerInAtomicSwcInstanceRef(rTriggerInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(rTriggerInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(rTriggerInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(rTriggerInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                RVariableInAtomicSwcInstanceRef rVariableInAtomicSwcInstanceRef = (RVariableInAtomicSwcInstanceRef)theEObject;
                T result = this.caseRVariableInAtomicSwcInstanceRef(rVariableInAtomicSwcInstanceRef);
                if (result == null) {
                    result = this.caseVariableInAtomicSwcInstanceRef(rVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGRVariableInAtomicSwcIRef(rVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(rVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGVariableInAtomicSwcIRef(rVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(rVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(rVariableInAtomicSwcInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                InnerPortGroupInCompositionInstanceRef innerPortGroupInCompositionInstanceRef = (InnerPortGroupInCompositionInstanceRef)theEObject;
                T result = this.caseInnerPortGroupInCompositionInstanceRef(innerPortGroupInCompositionInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(innerPortGroupInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(innerPortGroupInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(innerPortGroupInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseModeGroupInAtomicSwcInstanceRef(ModeGroupInAtomicSwcInstanceRef object) {
        return null;
    }

    public T caseOperationInAtomicSwcInstanceRef(OperationInAtomicSwcInstanceRef object) {
        return null;
    }

    public T casePModeGroupInAtomicSwcInstanceRef(PModeGroupInAtomicSwcInstanceRef object) {
        return null;
    }

    public T casePOperationInAtomicSwcInstanceRef(POperationInAtomicSwcInstanceRef object) {
        return null;
    }

    public T casePTriggerInAtomicSwcTypeInstanceRef(PTriggerInAtomicSwcTypeInstanceRef object) {
        return null;
    }

    public T caseTriggerInAtomicSwcInstanceRef(TriggerInAtomicSwcInstanceRef object) {
        return null;
    }

    public T casePVariableInAtomicSwcInstanceRef(PVariableInAtomicSwcInstanceRef object) {
        return null;
    }

    public T caseVariableInAtomicSwcInstanceRef(VariableInAtomicSwcInstanceRef object) {
        return null;
    }

    public T caseRModeGroupInAtomicSWCInstanceRef(RModeGroupInAtomicSWCInstanceRef object) {
        return null;
    }

    public T caseRModeInAtomicSwcInstanceRef(RModeInAtomicSwcInstanceRef object) {
        return null;
    }

    public T caseROperationInAtomicSwcInstanceRef(ROperationInAtomicSwcInstanceRef object) {
        return null;
    }

    public T caseRTriggerInAtomicSwcInstanceRef(RTriggerInAtomicSwcInstanceRef object) {
        return null;
    }

    public T caseRVariableInAtomicSwcInstanceRef(RVariableInAtomicSwcInstanceRef object) {
        return null;
    }

    public T caseInnerPortGroupInCompositionInstanceRef(InnerPortGroupInCompositionInstanceRef object) {
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

    public T caseGModeGroupInAtomicSwcIRef(GModeGroupInAtomicSwcIRef object) {
        return null;
    }

    public T caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPModeGroupInAtomicSwcIRef(GPModeGroupInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPOperationInAtomicSwcIRef(GPOperationInAtomicSwcIRef object) {
        return null;
    }

    public T caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGPVariableInAtomicSwcIRef(GPVariableInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRModeGroupInAtomicSwcIRef(GRModeGroupInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRModeInAtomicSwcIRef(GRModeInAtomicSwcIRef object) {
        return null;
    }

    public T caseGROperationInAtomicSwcIRef(GROperationInAtomicSwcIRef object) {
        return null;
    }

    public T caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

