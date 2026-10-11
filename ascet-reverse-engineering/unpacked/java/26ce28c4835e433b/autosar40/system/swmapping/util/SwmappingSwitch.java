/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.system.swmapping.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.swmapping.ComponentClustering;
import autosar40.system.swmapping.ComponentSeparation;
import autosar40.system.swmapping.EcuPartition;
import autosar40.system.swmapping.EcuResourceEstimation;
import autosar40.system.swmapping.MappingConstraint;
import autosar40.system.swmapping.SwcToEcuMapping;
import autosar40.system.swmapping.SwcToEcuMappingConstraint;
import autosar40.system.swmapping.SwcToImplMapping;
import autosar40.system.swmapping.SwmappingPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwmappingSwitch<T> {
    protected static SwmappingPackage modelPackage;

    public SwmappingSwitch() {
        if (modelPackage == null) {
            modelPackage = SwmappingPackage.eINSTANCE;
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
                ComponentClustering componentClustering = (ComponentClustering)theEObject;
                T result = this.caseComponentClustering(componentClustering);
                if (result == null) {
                    result = this.caseMappingConstraint(componentClustering);
                }
                if (result == null) {
                    result = this.caseARObject(componentClustering);
                }
                if (result == null) {
                    result = this.caseGARObject(componentClustering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                MappingConstraint mappingConstraint = (MappingConstraint)theEObject;
                T result = this.caseMappingConstraint(mappingConstraint);
                if (result == null) {
                    result = this.caseARObject(mappingConstraint);
                }
                if (result == null) {
                    result = this.caseGARObject(mappingConstraint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ComponentSeparation componentSeparation = (ComponentSeparation)theEObject;
                T result = this.caseComponentSeparation(componentSeparation);
                if (result == null) {
                    result = this.caseMappingConstraint(componentSeparation);
                }
                if (result == null) {
                    result = this.caseARObject(componentSeparation);
                }
                if (result == null) {
                    result = this.caseGARObject(componentSeparation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                EcuPartition ecuPartition = (EcuPartition)theEObject;
                T result = this.caseEcuPartition(ecuPartition);
                if (result == null) {
                    result = this.caseIdentifiable(ecuPartition);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecuPartition);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuPartition);
                }
                if (result == null) {
                    result = this.caseReferrable(ecuPartition);
                }
                if (result == null) {
                    result = this.caseARObject(ecuPartition);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecuPartition);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuPartition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwcToEcuMapping swcToEcuMapping = (SwcToEcuMapping)theEObject;
                T result = this.caseSwcToEcuMapping(swcToEcuMapping);
                if (result == null) {
                    result = this.caseIdentifiable(swcToEcuMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swcToEcuMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcToEcuMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(swcToEcuMapping);
                }
                if (result == null) {
                    result = this.caseARObject(swcToEcuMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(swcToEcuMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(swcToEcuMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SwcToEcuMappingConstraint swcToEcuMappingConstraint = (SwcToEcuMappingConstraint)theEObject;
                T result = this.caseSwcToEcuMappingConstraint(swcToEcuMappingConstraint);
                if (result == null) {
                    result = this.caseMappingConstraint(swcToEcuMappingConstraint);
                }
                if (result == null) {
                    result = this.caseARObject(swcToEcuMappingConstraint);
                }
                if (result == null) {
                    result = this.caseGARObject(swcToEcuMappingConstraint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SwcToImplMapping swcToImplMapping = (SwcToImplMapping)theEObject;
                T result = this.caseSwcToImplMapping(swcToImplMapping);
                if (result == null) {
                    result = this.caseIdentifiable(swcToImplMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swcToImplMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcToImplMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(swcToImplMapping);
                }
                if (result == null) {
                    result = this.caseARObject(swcToImplMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(swcToImplMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(swcToImplMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                EcuResourceEstimation ecuResourceEstimation = (EcuResourceEstimation)theEObject;
                T result = this.caseEcuResourceEstimation(ecuResourceEstimation);
                if (result == null) {
                    result = this.caseARObject(ecuResourceEstimation);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuResourceEstimation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseComponentClustering(ComponentClustering object) {
        return null;
    }

    public T caseMappingConstraint(MappingConstraint object) {
        return null;
    }

    public T caseComponentSeparation(ComponentSeparation object) {
        return null;
    }

    public T caseEcuPartition(EcuPartition object) {
        return null;
    }

    public T caseSwcToEcuMapping(SwcToEcuMapping object) {
        return null;
    }

    public T caseSwcToEcuMappingConstraint(SwcToEcuMappingConstraint object) {
        return null;
    }

    public T caseSwcToImplMapping(SwcToImplMapping object) {
        return null;
    }

    public T caseEcuResourceEstimation(EcuResourceEstimation object) {
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

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

