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
package autosar21.system.swmapping.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.swmapping.AggregatedStackUsage;
import autosar21.system.swmapping.BSWResourceEstimation;
import autosar21.system.swmapping.ComponentCluster;
import autosar21.system.swmapping.ComponentSeparation;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.FreeTextMappingConstraint;
import autosar21.system.swmapping.MappingConstraint;
import autosar21.system.swmapping.RTERessourceEstimation;
import autosar21.system.swmapping.ResourceEstimationDetails;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.SwCompToImplMapping;
import autosar21.system.swmapping.SwmappingPackage;
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
                AggregatedStackUsage aggregatedStackUsage = (AggregatedStackUsage)theEObject;
                T result = this.caseAggregatedStackUsage(aggregatedStackUsage);
                if (result == null) {
                    result = this.caseARObject(aggregatedStackUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(aggregatedStackUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                BSWResourceEstimation bswResourceEstimation = (BSWResourceEstimation)theEObject;
                T result = this.caseBSWResourceEstimation(bswResourceEstimation);
                if (result == null) {
                    result = this.caseResourceEstimationDetails(bswResourceEstimation);
                }
                if (result == null) {
                    result = this.caseARObject(bswResourceEstimation);
                }
                if (result == null) {
                    result = this.caseGARObject(bswResourceEstimation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ResourceEstimationDetails resourceEstimationDetails = (ResourceEstimationDetails)theEObject;
                T result = this.caseResourceEstimationDetails(resourceEstimationDetails);
                if (result == null) {
                    result = this.caseARObject(resourceEstimationDetails);
                }
                if (result == null) {
                    result = this.caseGARObject(resourceEstimationDetails);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ComponentCluster componentCluster = (ComponentCluster)theEObject;
                T result = this.caseComponentCluster(componentCluster);
                if (result == null) {
                    result = this.caseMappingConstraint(componentCluster);
                }
                if (result == null) {
                    result = this.caseARObject(componentCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(componentCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
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
            case 5: {
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
            case 6: {
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
            case 7: {
                RTERessourceEstimation rteRessourceEstimation = (RTERessourceEstimation)theEObject;
                T result = this.caseRTERessourceEstimation(rteRessourceEstimation);
                if (result == null) {
                    result = this.caseResourceEstimationDetails(rteRessourceEstimation);
                }
                if (result == null) {
                    result = this.caseARObject(rteRessourceEstimation);
                }
                if (result == null) {
                    result = this.caseGARObject(rteRessourceEstimation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                FreeTextMappingConstraint freeTextMappingConstraint = (FreeTextMappingConstraint)theEObject;
                T result = this.caseFreeTextMappingConstraint(freeTextMappingConstraint);
                if (result == null) {
                    result = this.caseMappingConstraint(freeTextMappingConstraint);
                }
                if (result == null) {
                    result = this.caseARObject(freeTextMappingConstraint);
                }
                if (result == null) {
                    result = this.caseGARObject(freeTextMappingConstraint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SwCompToImplMapping swCompToImplMapping = (SwCompToImplMapping)theEObject;
                T result = this.caseSwCompToImplMapping(swCompToImplMapping);
                if (result == null) {
                    result = this.caseIdentifiable(swCompToImplMapping);
                }
                if (result == null) {
                    result = this.caseARObject(swCompToImplMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swCompToImplMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swCompToImplMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(swCompToImplMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                SwCompToEcuMapping swCompToEcuMapping = (SwCompToEcuMapping)theEObject;
                T result = this.caseSwCompToEcuMapping(swCompToEcuMapping);
                if (result == null) {
                    result = this.caseIdentifiable(swCompToEcuMapping);
                }
                if (result == null) {
                    result = this.caseARObject(swCompToEcuMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swCompToEcuMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swCompToEcuMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(swCompToEcuMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAggregatedStackUsage(AggregatedStackUsage object) {
        return null;
    }

    public T caseBSWResourceEstimation(BSWResourceEstimation object) {
        return null;
    }

    public T caseResourceEstimationDetails(ResourceEstimationDetails object) {
        return null;
    }

    public T caseComponentCluster(ComponentCluster object) {
        return null;
    }

    public T caseMappingConstraint(MappingConstraint object) {
        return null;
    }

    public T caseComponentSeparation(ComponentSeparation object) {
        return null;
    }

    public T caseEcuResourceEstimation(EcuResourceEstimation object) {
        return null;
    }

    public T caseRTERessourceEstimation(RTERessourceEstimation object) {
        return null;
    }

    public T caseFreeTextMappingConstraint(FreeTextMappingConstraint object) {
        return null;
    }

    public T caseSwCompToImplMapping(SwCompToImplMapping object) {
        return null;
    }

    public T caseSwCompToEcuMapping(SwCompToEcuMapping object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

