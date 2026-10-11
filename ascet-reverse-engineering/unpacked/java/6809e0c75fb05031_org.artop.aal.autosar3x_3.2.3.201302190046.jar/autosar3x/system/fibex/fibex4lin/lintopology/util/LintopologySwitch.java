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
package autosar3x.system.fibex.fibex4lin.lintopology.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCluster;
import autosar3x.system.fibex.fibex4lin.lintopology.LinCommunicationController;
import autosar3x.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar3x.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
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
public class LintopologySwitch<T> {
    protected static LintopologyPackage modelPackage;

    public LintopologySwitch() {
        if (modelPackage == null) {
            modelPackage = LintopologyPackage.eINSTANCE;
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
                LinCluster linCluster = (LinCluster)theEObject;
                T result = this.caseLinCluster(linCluster);
                if (result == null) {
                    result = this.caseCommunicationCluster(linCluster);
                }
                if (result == null) {
                    result = this.caseFibexElement(linCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(linCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(linCluster);
                }
                if (result == null) {
                    result = this.caseARObject(linCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(linCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                LinMaster linMaster = (LinMaster)theEObject;
                T result = this.caseLinMaster(linMaster);
                if (result == null) {
                    result = this.caseLinCommunicationController(linMaster);
                }
                if (result == null) {
                    result = this.caseCommunicationController(linMaster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linMaster);
                }
                if (result == null) {
                    result = this.caseARObject(linMaster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linMaster);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linMaster);
                }
                if (result == null) {
                    result = this.caseGARObject(linMaster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                LinSlave linSlave = (LinSlave)theEObject;
                T result = this.caseLinSlave(linSlave);
                if (result == null) {
                    result = this.caseLinCommunicationController(linSlave);
                }
                if (result == null) {
                    result = this.caseCommunicationController(linSlave);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linSlave);
                }
                if (result == null) {
                    result = this.caseARObject(linSlave);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linSlave);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linSlave);
                }
                if (result == null) {
                    result = this.caseGARObject(linSlave);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                LinCommunicationController linCommunicationController = (LinCommunicationController)theEObject;
                T result = this.caseLinCommunicationController(linCommunicationController);
                if (result == null) {
                    result = this.caseCommunicationController(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(linCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseLinCluster(LinCluster object) {
        return null;
    }

    public T caseLinMaster(LinMaster object) {
        return null;
    }

    public T caseLinSlave(LinSlave object) {
        return null;
    }

    public T caseLinCommunicationController(LinCommunicationController object) {
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

    public T caseCommunicationController(CommunicationController object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

