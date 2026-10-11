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
package autosar21.system.systemsignal.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.systemsignal.ClusterSignalTransmitter;
import autosar21.system.systemsignal.SystemSignal;
import autosar21.system.systemsignal.SystemSignalGroup;
import autosar21.system.systemsignal.SystemsignalPackage;
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
public class SystemsignalSwitch<T> {
    protected static SystemsignalPackage modelPackage;

    public SystemsignalSwitch() {
        if (modelPackage == null) {
            modelPackage = SystemsignalPackage.eINSTANCE;
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
                ClusterSignal clusterSignal = (ClusterSignal)theEObject;
                T result = this.caseClusterSignal(clusterSignal);
                if (result == null) {
                    result = this.caseIdentifiable(clusterSignal);
                }
                if (result == null) {
                    result = this.caseARObject(clusterSignal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(clusterSignal);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)clusterSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(clusterSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ClusterSignalTransmitter clusterSignalTransmitter = (ClusterSignalTransmitter)theEObject;
                T result = this.caseClusterSignalTransmitter(clusterSignalTransmitter);
                if (result == null) {
                    result = this.caseARObject(clusterSignalTransmitter);
                }
                if (result == null) {
                    result = this.caseGARObject(clusterSignalTransmitter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ClusterSignalReceiver clusterSignalReceiver = (ClusterSignalReceiver)theEObject;
                T result = this.caseClusterSignalReceiver(clusterSignalReceiver);
                if (result == null) {
                    result = this.caseARObject(clusterSignalReceiver);
                }
                if (result == null) {
                    result = this.caseGARObject(clusterSignalReceiver);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SystemSignalGroup systemSignalGroup = (SystemSignalGroup)theEObject;
                T result = this.caseSystemSignalGroup(systemSignalGroup);
                if (result == null) {
                    result = this.caseARElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseARObject(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(systemSignalGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SystemSignal systemSignal = (SystemSignal)theEObject;
                T result = this.caseSystemSignal(systemSignal);
                if (result == null) {
                    result = this.caseARElement(systemSignal);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(systemSignal);
                }
                if (result == null) {
                    result = this.casePackageableElement(systemSignal);
                }
                if (result == null) {
                    result = this.caseIdentifiable(systemSignal);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(systemSignal);
                }
                if (result == null) {
                    result = this.caseARObject(systemSignal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemSignal);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)systemSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(systemSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseClusterSignal(ClusterSignal object) {
        return null;
    }

    public T caseClusterSignalTransmitter(ClusterSignalTransmitter object) {
        return null;
    }

    public T caseClusterSignalReceiver(ClusterSignalReceiver object) {
        return null;
    }

    public T caseSystemSignalGroup(SystemSignalGroup object) {
        return null;
    }

    public T caseSystemSignal(SystemSignal object) {
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

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

