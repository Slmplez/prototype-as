/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.composition.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeProvider;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeRequester;
import autosar3x.swcomponent.composition.instanceref.DelegationConnectorPrototypeInnerPort;
import autosar3x.swcomponent.composition.instanceref.InstancerefPackage;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeApplicationPort;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeServicePort;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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
                AssemblyConnectorPrototypeProvider assemblyConnectorPrototypeProvider = (AssemblyConnectorPrototypeProvider)theEObject;
                T result = this.caseAssemblyConnectorPrototypeProvider(assemblyConnectorPrototypeProvider);
                if (result == null) {
                    result = this.caseARObject(assemblyConnectorPrototypeProvider);
                }
                if (result == null) {
                    result = this.caseGAssemblyConnectorPrototypeProviderIRef(assemblyConnectorPrototypeProvider);
                }
                if (result == null) {
                    result = this.caseGPPortInCompositionIRef((GPPortInCompositionIRef)assemblyConnectorPrototypeProvider);
                }
                if (result == null) {
                    result = this.caseGARObject(assemblyConnectorPrototypeProvider);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AssemblyConnectorPrototypeRequester assemblyConnectorPrototypeRequester = (AssemblyConnectorPrototypeRequester)theEObject;
                T result = this.caseAssemblyConnectorPrototypeRequester(assemblyConnectorPrototypeRequester);
                if (result == null) {
                    result = this.caseARObject(assemblyConnectorPrototypeRequester);
                }
                if (result == null) {
                    result = this.caseGAssemblyConnectorPrototypeRequesterIRef(assemblyConnectorPrototypeRequester);
                }
                if (result == null) {
                    result = this.caseGRPortInCompositionIRef((GRPortInCompositionIRef)assemblyConnectorPrototypeRequester);
                }
                if (result == null) {
                    result = this.caseGARObject(assemblyConnectorPrototypeRequester);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DelegationConnectorPrototypeInnerPort delegationConnectorPrototypeInnerPort = (DelegationConnectorPrototypeInnerPort)theEObject;
                T result = this.caseDelegationConnectorPrototypeInnerPort(delegationConnectorPrototypeInnerPort);
                if (result == null) {
                    result = this.caseARObject(delegationConnectorPrototypeInnerPort);
                }
                if (result == null) {
                    result = this.caseGARObject(delegationConnectorPrototypeInnerPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ServiceConnectorPrototypeApplicationPort serviceConnectorPrototypeApplicationPort = (ServiceConnectorPrototypeApplicationPort)theEObject;
                T result = this.caseServiceConnectorPrototypeApplicationPort(serviceConnectorPrototypeApplicationPort);
                if (result == null) {
                    result = this.caseARObject(serviceConnectorPrototypeApplicationPort);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceConnectorPrototypeApplicationPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ServiceConnectorPrototypeServicePort serviceConnectorPrototypeServicePort = (ServiceConnectorPrototypeServicePort)theEObject;
                T result = this.caseServiceConnectorPrototypeServicePort(serviceConnectorPrototypeServicePort);
                if (result == null) {
                    result = this.caseARObject(serviceConnectorPrototypeServicePort);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceConnectorPrototypeServicePort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAssemblyConnectorPrototypeProvider(AssemblyConnectorPrototypeProvider object) {
        return null;
    }

    public T caseAssemblyConnectorPrototypeRequester(AssemblyConnectorPrototypeRequester object) {
        return null;
    }

    public T caseDelegationConnectorPrototypeInnerPort(DelegationConnectorPrototypeInnerPort object) {
        return null;
    }

    public T caseServiceConnectorPrototypeApplicationPort(ServiceConnectorPrototypeApplicationPort object) {
        return null;
    }

    public T caseServiceConnectorPrototypeServicePort(ServiceConnectorPrototypeServicePort object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGPPortInCompositionIRef(GPPortInCompositionIRef object) {
        return null;
    }

    public T caseGAssemblyConnectorPrototypeProviderIRef(GAssemblyConnectorPrototypeProviderIRef object) {
        return null;
    }

    public T caseGRPortInCompositionIRef(GRPortInCompositionIRef object) {
        return null;
    }

    public T caseGAssemblyConnectorPrototypeRequesterIRef(GAssemblyConnectorPrototypeRequesterIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

