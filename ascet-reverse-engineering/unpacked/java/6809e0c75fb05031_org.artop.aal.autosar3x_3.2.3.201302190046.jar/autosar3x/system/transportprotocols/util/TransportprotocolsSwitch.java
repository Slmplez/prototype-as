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
package autosar3x.system.transportprotocols.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.transportprotocols.CanTpConnectionChannel;
import autosar3x.system.transportprotocols.CanTpNode;
import autosar3x.system.transportprotocols.FlexRayTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.FlexrayIsoTpEcu;
import autosar3x.system.transportprotocols.FlexrayIsoTpNode;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import autosar3x.system.transportprotocols.FlexrayTpChannel;
import autosar3x.system.transportprotocols.FlexrayTpNode;
import autosar3x.system.transportprotocols.LinTpChannel;
import autosar3x.system.transportprotocols.LinTpNode;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TpChannel;
import autosar3x.system.transportprotocols.TpNode;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TransportprotocolsSwitch<T> {
    protected static TransportprotocolsPackage modelPackage;

    public TransportprotocolsSwitch() {
        if (modelPackage == null) {
            modelPackage = TransportprotocolsPackage.eINSTANCE;
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
                CanTpConnectionChannel canTpConnectionChannel = (CanTpConnectionChannel)theEObject;
                T result = this.caseCanTpConnectionChannel(canTpConnectionChannel);
                if (result == null) {
                    result = this.caseTpChannel(canTpConnectionChannel);
                }
                if (result == null) {
                    result = this.caseARObject(canTpConnectionChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(canTpConnectionChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CanTpNode canTpNode = (CanTpNode)theEObject;
                T result = this.caseCanTpNode(canTpNode);
                if (result == null) {
                    result = this.caseTpNode(canTpNode);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canTpNode);
                }
                if (result == null) {
                    result = this.caseARObject(canTpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canTpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)canTpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(canTpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TpNode tpNode = (TpNode)theEObject;
                T result = this.caseTpNode(tpNode);
                if (result == null) {
                    result = this.caseIdentifiable(tpNode);
                }
                if (result == null) {
                    result = this.caseARObject(tpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)tpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(tpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                TpAddress tpAddress = (TpAddress)theEObject;
                T result = this.caseTpAddress(tpAddress);
                if (result == null) {
                    result = this.caseIdentifiable(tpAddress);
                }
                if (result == null) {
                    result = this.caseARObject(tpAddress);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tpAddress);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)tpAddress);
                }
                if (result == null) {
                    result = this.caseGARObject(tpAddress);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                FlexrayIsoTpConnection flexrayIsoTpConnection = (FlexrayIsoTpConnection)theEObject;
                T result = this.caseFlexrayIsoTpConnection(flexrayIsoTpConnection);
                if (result == null) {
                    result = this.caseTpChannel(flexrayIsoTpConnection);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayIsoTpConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayIsoTpConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                FlexrayIsoTpPduPool flexrayIsoTpPduPool = (FlexrayIsoTpPduPool)theEObject;
                T result = this.caseFlexrayIsoTpPduPool(flexrayIsoTpPduPool);
                if (result == null) {
                    result = this.caseIdentifiable(flexrayIsoTpPduPool);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayIsoTpPduPool);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayIsoTpPduPool);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayIsoTpPduPool);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayIsoTpPduPool);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                FlexrayIsoTpNode flexrayIsoTpNode = (FlexrayIsoTpNode)theEObject;
                T result = this.caseFlexrayIsoTpNode(flexrayIsoTpNode);
                if (result == null) {
                    result = this.caseTpNode(flexrayIsoTpNode);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayIsoTpNode);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayIsoTpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayIsoTpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayIsoTpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayIsoTpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                FlexrayIsoTpConnectionControl flexrayIsoTpConnectionControl = (FlexrayIsoTpConnectionControl)theEObject;
                T result = this.caseFlexrayIsoTpConnectionControl(flexrayIsoTpConnectionControl);
                if (result == null) {
                    result = this.caseIdentifiable(flexrayIsoTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayIsoTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayIsoTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayIsoTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayIsoTpConnectionControl);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                FlexrayIsoTpEcu flexrayIsoTpEcu = (FlexrayIsoTpEcu)theEObject;
                T result = this.caseFlexrayIsoTpEcu(flexrayIsoTpEcu);
                if (result == null) {
                    result = this.caseARObject(flexrayIsoTpEcu);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayIsoTpEcu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                FlexrayTpChannel flexrayTpChannel = (FlexrayTpChannel)theEObject;
                T result = this.caseFlexrayTpChannel(flexrayTpChannel);
                if (result == null) {
                    result = this.caseTpChannel(flexrayTpChannel);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayTpChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayTpChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                FlexRayTpConnection flexRayTpConnection = (FlexRayTpConnection)theEObject;
                T result = this.caseFlexRayTpConnection(flexRayTpConnection);
                if (result == null) {
                    result = this.caseARObject(flexRayTpConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(flexRayTpConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                FlexrayTpNode flexrayTpNode = (FlexrayTpNode)theEObject;
                T result = this.caseFlexrayTpNode(flexrayTpNode);
                if (result == null) {
                    result = this.caseTpNode(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayTpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                LinTpChannel linTpChannel = (LinTpChannel)theEObject;
                T result = this.caseLinTpChannel(linTpChannel);
                if (result == null) {
                    result = this.caseTpChannel(linTpChannel);
                }
                if (result == null) {
                    result = this.caseARObject(linTpChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(linTpChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                LinTpNode linTpNode = (LinTpNode)theEObject;
                T result = this.caseLinTpNode(linTpNode);
                if (result == null) {
                    result = this.caseTpNode(linTpNode);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linTpNode);
                }
                if (result == null) {
                    result = this.caseARObject(linTpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linTpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linTpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(linTpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                TpChannel tpChannel = (TpChannel)theEObject;
                T result = this.caseTpChannel(tpChannel);
                if (result == null) {
                    result = this.caseARObject(tpChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(tpChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCanTpConnectionChannel(CanTpConnectionChannel object) {
        return null;
    }

    public T caseCanTpNode(CanTpNode object) {
        return null;
    }

    public T caseTpNode(TpNode object) {
        return null;
    }

    public T caseTpAddress(TpAddress object) {
        return null;
    }

    public T caseFlexrayIsoTpConnection(FlexrayIsoTpConnection object) {
        return null;
    }

    public T caseFlexrayIsoTpPduPool(FlexrayIsoTpPduPool object) {
        return null;
    }

    public T caseFlexrayIsoTpNode(FlexrayIsoTpNode object) {
        return null;
    }

    public T caseFlexrayIsoTpConnectionControl(FlexrayIsoTpConnectionControl object) {
        return null;
    }

    public T caseFlexrayIsoTpEcu(FlexrayIsoTpEcu object) {
        return null;
    }

    public T caseFlexrayTpChannel(FlexrayTpChannel object) {
        return null;
    }

    public T caseFlexRayTpConnection(FlexRayTpConnection object) {
        return null;
    }

    public T caseFlexrayTpNode(FlexrayTpNode object) {
        return null;
    }

    public T caseLinTpChannel(LinTpChannel object) {
        return null;
    }

    public T caseLinTpNode(LinTpNode object) {
        return null;
    }

    public T caseTpChannel(TpChannel object) {
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

