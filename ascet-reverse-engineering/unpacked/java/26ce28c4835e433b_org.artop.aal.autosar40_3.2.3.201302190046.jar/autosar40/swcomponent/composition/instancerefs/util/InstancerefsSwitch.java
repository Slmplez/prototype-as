/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.composition.instancerefs.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.composition.instancerefs.PPortInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.PortInCompositionTypeInstanceRef;
import autosar40.swcomponent.composition.instancerefs.RPortInCompositionInstanceRef;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
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
                ComponentInCompositionInstanceRef componentInCompositionInstanceRef = (ComponentInCompositionInstanceRef)theEObject;
                T result = this.caseComponentInCompositionInstanceRef(componentInCompositionInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(componentInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(componentInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(componentInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                PortInCompositionTypeInstanceRef portInCompositionTypeInstanceRef = (PortInCompositionTypeInstanceRef)theEObject;
                T result = this.casePortInCompositionTypeInstanceRef(portInCompositionTypeInstanceRef);
                if (result == null) {
                    result = this.caseAtpInstanceRef(portInCompositionTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(portInCompositionTypeInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(portInCompositionTypeInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                RPortInCompositionInstanceRef rPortInCompositionInstanceRef = (RPortInCompositionInstanceRef)theEObject;
                T result = this.caseRPortInCompositionInstanceRef(rPortInCompositionInstanceRef);
                if (result == null) {
                    result = this.casePortInCompositionTypeInstanceRef(rPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseGRPortInCompositionIRef(rPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(rPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(rPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(rPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PPortInCompositionInstanceRef pPortInCompositionInstanceRef = (PPortInCompositionInstanceRef)theEObject;
                T result = this.casePPortInCompositionInstanceRef(pPortInCompositionInstanceRef);
                if (result == null) {
                    result = this.casePortInCompositionTypeInstanceRef(pPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseGPPortInCompositionIRef(pPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseAtpInstanceRef(pPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseARObject(pPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.caseGARObject(pPortInCompositionInstanceRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseComponentInCompositionInstanceRef(ComponentInCompositionInstanceRef object) {
        return null;
    }

    public T casePortInCompositionTypeInstanceRef(PortInCompositionTypeInstanceRef object) {
        return null;
    }

    public T caseRPortInCompositionInstanceRef(RPortInCompositionInstanceRef object) {
        return null;
    }

    public T casePPortInCompositionInstanceRef(PPortInCompositionInstanceRef object) {
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

    public T caseGRPortInCompositionIRef(GRPortInCompositionIRef object) {
        return null;
    }

    public T caseGPPortInCompositionIRef(GPPortInCompositionIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

