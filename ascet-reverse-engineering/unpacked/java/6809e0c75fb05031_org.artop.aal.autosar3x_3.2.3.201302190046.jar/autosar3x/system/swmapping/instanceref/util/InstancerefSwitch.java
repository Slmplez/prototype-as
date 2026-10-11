/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.swmapping.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.swmapping.instanceref.ComponentClusteringClusteredComponent;
import autosar3x.system.swmapping.instanceref.ComponentSeparationSeparatedComponent;
import autosar3x.system.swmapping.instanceref.InstancerefPackage;
import autosar3x.system.swmapping.instanceref.PncMappingVfc;
import autosar3x.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar3x.system.swmapping.instanceref.SwCompToImplMappingComponent;
import autosar3x.system.swmapping.instanceref.SwcToEcuMappingConstraintComponent;
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
            case 1: {
                PncMappingVfc pncMappingVfc = (PncMappingVfc)theEObject;
                T result = this.casePncMappingVfc(pncMappingVfc);
                if (result == null) {
                    result = this.caseARObject(pncMappingVfc);
                }
                if (result == null) {
                    result = this.caseGARObject(pncMappingVfc);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
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
            case 3: {
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
            case 4: {
                SwcToEcuMappingConstraintComponent swcToEcuMappingConstraintComponent = (SwcToEcuMappingConstraintComponent)theEObject;
                T result = this.caseSwcToEcuMappingConstraintComponent(swcToEcuMappingConstraintComponent);
                if (result == null) {
                    result = this.caseARObject(swcToEcuMappingConstraintComponent);
                }
                if (result == null) {
                    result = this.caseGARObject(swcToEcuMappingConstraintComponent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ComponentClusteringClusteredComponent componentClusteringClusteredComponent = (ComponentClusteringClusteredComponent)theEObject;
                T result = this.caseComponentClusteringClusteredComponent(componentClusteringClusteredComponent);
                if (result == null) {
                    result = this.caseARObject(componentClusteringClusteredComponent);
                }
                if (result == null) {
                    result = this.caseGARObject(componentClusteringClusteredComponent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseComponentSeparationSeparatedComponent(ComponentSeparationSeparatedComponent object) {
        return null;
    }

    public T casePncMappingVfc(PncMappingVfc object) {
        return null;
    }

    public T caseSwCompToEcuMappingComponent(SwCompToEcuMappingComponent object) {
        return null;
    }

    public T caseSwCompToImplMappingComponent(SwCompToImplMappingComponent object) {
        return null;
    }

    public T caseSwcToEcuMappingConstraintComponent(SwcToEcuMappingConstraintComponent object) {
        return null;
    }

    public T caseComponentClusteringClusteredComponent(ComponentClusteringClusteredComponent object) {
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

