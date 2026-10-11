/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcommunication.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcommunication.GClientComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec;
import gautosar.gswcomponents.gcommunication.GPPortComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedSenderComSpec;
import gautosar.gswcomponents.gcommunication.GRPortComSpec;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;
import gautosar.gswcomponents.gcommunication.GServerComSpec;
import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GcommunicationSwitch<T> {
    protected static GcommunicationPackage modelPackage;

    public GcommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = GcommunicationPackage.eINSTANCE;
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
                GPPortComSpec gpPortComSpec = (GPPortComSpec)theEObject;
                T result = this.caseGPPortComSpec(gpPortComSpec);
                if (result == null) {
                    result = this.caseGARObject(gpPortComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GServerComSpec gServerComSpec = (GServerComSpec)theEObject;
                T result = this.caseGServerComSpec(gServerComSpec);
                if (result == null) {
                    result = this.caseGPPortComSpec(gServerComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(gServerComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GSenderComSpec gSenderComSpec = (GSenderComSpec)theEObject;
                T result = this.caseGSenderComSpec(gSenderComSpec);
                if (result == null) {
                    result = this.caseGPPortComSpec(gSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(gSenderComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GQueuedSenderComSpec gQueuedSenderComSpec = (GQueuedSenderComSpec)theEObject;
                T result = this.caseGQueuedSenderComSpec(gQueuedSenderComSpec);
                if (result == null) {
                    result = this.caseGSenderComSpec(gQueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(gQueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(gQueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GNonqueuedSenderComSpec gNonqueuedSenderComSpec = (GNonqueuedSenderComSpec)theEObject;
                T result = this.caseGNonqueuedSenderComSpec(gNonqueuedSenderComSpec);
                if (result == null) {
                    result = this.caseGSenderComSpec(gNonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGPPortComSpec(gNonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(gNonqueuedSenderComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GRPortComSpec grPortComSpec = (GRPortComSpec)theEObject;
                T result = this.caseGRPortComSpec(grPortComSpec);
                if (result == null) {
                    result = this.caseGARObject(grPortComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GClientComSpec gClientComSpec = (GClientComSpec)theEObject;
                T result = this.caseGClientComSpec(gClientComSpec);
                if (result == null) {
                    result = this.caseGRPortComSpec(gClientComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(gClientComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                GReceiverComSpec gReceiverComSpec = (GReceiverComSpec)theEObject;
                T result = this.caseGReceiverComSpec(gReceiverComSpec);
                if (result == null) {
                    result = this.caseGRPortComSpec(gReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(gReceiverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                GQueuedReceiverComSpec gQueuedReceiverComSpec = (GQueuedReceiverComSpec)theEObject;
                T result = this.caseGQueuedReceiverComSpec(gQueuedReceiverComSpec);
                if (result == null) {
                    result = this.caseGReceiverComSpec(gQueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(gQueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(gQueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                GNonqueuedReceiverComSpec gNonqueuedReceiverComSpec = (GNonqueuedReceiverComSpec)theEObject;
                T result = this.caseGNonqueuedReceiverComSpec(gNonqueuedReceiverComSpec);
                if (result == null) {
                    result = this.caseGReceiverComSpec(gNonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGRPortComSpec(gNonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.caseGARObject(gNonqueuedReceiverComSpec);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGPPortComSpec(GPPortComSpec object) {
        return null;
    }

    public T caseGServerComSpec(GServerComSpec object) {
        return null;
    }

    public T caseGSenderComSpec(GSenderComSpec object) {
        return null;
    }

    public T caseGQueuedSenderComSpec(GQueuedSenderComSpec object) {
        return null;
    }

    public T caseGNonqueuedSenderComSpec(GNonqueuedSenderComSpec object) {
        return null;
    }

    public T caseGRPortComSpec(GRPortComSpec object) {
        return null;
    }

    public T caseGClientComSpec(GClientComSpec object) {
        return null;
    }

    public T caseGReceiverComSpec(GReceiverComSpec object) {
        return null;
    }

    public T caseGQueuedReceiverComSpec(GQueuedReceiverComSpec object) {
        return null;
    }

    public T caseGNonqueuedReceiverComSpec(GNonqueuedReceiverComSpec object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

