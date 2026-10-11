/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.swmapping.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.swmapping.instanceref.ComponentClusterClusteredComponent;
import autosar21.system.swmapping.instanceref.ComponentSeparationSeparatedComponent;
import autosar21.system.swmapping.instanceref.EcuResourceEstimationEcuInstance;
import autosar21.system.swmapping.instanceref.InstancerefPackage;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar21.system.swmapping.instanceref.SwCompToEcuMappingEcuInstance;
import autosar21.system.swmapping.instanceref.SwCompToImplMappingComponent;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
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
                ComponentClusterClusteredComponent componentClusterClusteredComponent = (ComponentClusterClusteredComponent)theEObject;
                T result = this.caseComponentClusterClusteredComponent(componentClusterClusteredComponent);
                if (result == null) {
                    result = this.caseARObject(componentClusterClusteredComponent);
                }
                if (result == null) {
                    result = this.caseGARObject(componentClusterClusteredComponent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ComponentSeparationSeparatedComponent componentSeparationSeparatedComponent = (ComponentSeparationSeparatedComponent)theEObject;
                T result = this.caseComponentSeparationSeparatedComponent(componentSeparationSeparatedComponent);
                if (result == null) {
                    result = this.caseARObject(componentSeparationSeparatedComponent);
                }
                if (result == null) {
                    result = this.caseGARObject(componentSeparationSeparatedComponent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                EcuResourceEstimationEcuInstance ecuResourceEstimationEcuInstance = (EcuResourceEstimationEcuInstance)theEObject;
                T result = this.caseEcuResourceEstimationEcuInstance(ecuResourceEstimationEcuInstance);
                if (result == null) {
                    result = this.caseARObject(ecuResourceEstimationEcuInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuResourceEstimationEcuInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwCompToEcuMappingComponent swCompToEcuMappingComponent = (SwCompToEcuMappingComponent)theEObject;
                T result = this.caseSwCompToEcuMappingComponent(swCompToEcuMappingComponent);
                if (result == null) {
                    result = this.caseARObject(swCompToEcuMappingComponent);
                }
                if (result == null) {
                    result = this.caseGARObject(swCompToEcuMappingComponent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwCompToEcuMappingEcuInstance swCompToEcuMappingEcuInstance = (SwCompToEcuMappingEcuInstance)theEObject;
                T result = this.caseSwCompToEcuMappingEcuInstance(swCompToEcuMappingEcuInstance);
                if (result == null) {
                    result = this.caseARObject(swCompToEcuMappingEcuInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(swCompToEcuMappingEcuInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SwCompToImplMappingComponent swCompToImplMappingComponent = (SwCompToImplMappingComponent)theEObject;
                T result = this.caseSwCompToImplMappingComponent(swCompToImplMappingComponent);
                if (result == null) {
                    result = this.caseARObject(swCompToImplMappingComponent);
                }
                if (result == null) {
                    result = this.caseGARObject(swCompToImplMappingComponent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseComponentClusterClusteredComponent(ComponentClusterClusteredComponent object) {
        return null;
    }

    public T caseComponentSeparationSeparatedComponent(ComponentSeparationSeparatedComponent object) {
        return null;
    }

    public T caseEcuResourceEstimationEcuInstance(EcuResourceEstimationEcuInstance object) {
        return null;
    }

    public T caseSwCompToEcuMappingComponent(SwCompToEcuMappingComponent object) {
        return null;
    }

    public T caseSwCompToEcuMappingEcuInstance(SwCompToEcuMappingEcuInstance object) {
        return null;
    }

    public T caseSwCompToImplMappingComponent(SwCompToImplMappingComponent object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

