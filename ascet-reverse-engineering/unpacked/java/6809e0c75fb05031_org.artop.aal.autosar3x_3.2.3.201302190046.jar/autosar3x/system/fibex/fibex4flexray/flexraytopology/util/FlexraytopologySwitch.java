/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexRayCommunicationConnector;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlexraytopologySwitch<T> {
    protected static FlexraytopologyPackage modelPackage;

    public FlexraytopologySwitch() {
        if (modelPackage == null) {
            modelPackage = FlexraytopologyPackage.eINSTANCE;
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
                FlexrayCluster flexrayCluster = (FlexrayCluster)theEObject;
                T result = this.caseFlexrayCluster(flexrayCluster);
                if (result == null) {
                    result = this.caseCommunicationCluster(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseFibexElement(flexrayCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FlexRayCommunicationConnector flexRayCommunicationConnector = (FlexRayCommunicationConnector)theEObject;
                T result = this.caseFlexRayCommunicationConnector(flexRayCommunicationConnector);
                if (result == null) {
                    result = this.caseCommunicationConnector(flexRayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexRayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(flexRayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexRayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexRayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(flexRayCommunicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FlexrayCommunicationController flexrayCommunicationController = (FlexrayCommunicationController)theEObject;
                T result = this.caseFlexrayCommunicationController(flexrayCommunicationController);
                if (result == null) {
                    result = this.caseCommunicationController(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                FlexrayFifoConfiguration flexrayFifoConfiguration = (FlexrayFifoConfiguration)theEObject;
                T result = this.caseFlexrayFifoConfiguration(flexrayFifoConfiguration);
                if (result == null) {
                    result = this.caseARObject(flexrayFifoConfiguration);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayFifoConfiguration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                FlexrayPhysicalChannel flexrayPhysicalChannel = (FlexrayPhysicalChannel)theEObject;
                T result = this.caseFlexrayPhysicalChannel(flexrayPhysicalChannel);
                if (result == null) {
                    result = this.casePhysicalChannel(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                FlexrayFifoRange flexrayFifoRange = (FlexrayFifoRange)theEObject;
                T result = this.caseFlexrayFifoRange(flexrayFifoRange);
                if (result == null) {
                    result = this.caseARObject(flexrayFifoRange);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayFifoRange);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseFlexrayCluster(FlexrayCluster object) {
        return null;
    }

    public T caseFlexRayCommunicationConnector(FlexRayCommunicationConnector object) {
        return null;
    }

    public T caseFlexrayCommunicationController(FlexrayCommunicationController object) {
        return null;
    }

    public T caseFlexrayFifoConfiguration(FlexrayFifoConfiguration object) {
        return null;
    }

    public T caseFlexrayPhysicalChannel(FlexrayPhysicalChannel object) {
        return null;
    }

    public T caseFlexrayFifoRange(FlexrayFifoRange object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseFibexElement(FibexElement object) {
        return null;
    }

    public T caseCommunicationCluster(CommunicationCluster object) {
        return null;
    }

    public T caseCommunicationConnector(CommunicationConnector object) {
        return null;
    }

    public T caseCommunicationController(CommunicationController object) {
        return null;
    }

    public T casePhysicalChannel(PhysicalChannel object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

