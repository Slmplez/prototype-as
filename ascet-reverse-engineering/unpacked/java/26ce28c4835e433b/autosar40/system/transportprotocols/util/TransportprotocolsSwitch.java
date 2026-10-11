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
package autosar40.system.transportprotocols.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpConnection;
import autosar40.system.transportprotocols.CanTpEcu;
import autosar40.system.transportprotocols.CanTpNode;
import autosar40.system.transportprotocols.FlexrayArTpChannel;
import autosar40.system.transportprotocols.FlexrayArTpConfig;
import autosar40.system.transportprotocols.FlexrayArTpConnection;
import autosar40.system.transportprotocols.FlexrayArTpNode;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.FlexrayTpConnection;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.FlexrayTpEcu;
import autosar40.system.transportprotocols.FlexrayTpNode;
import autosar40.system.transportprotocols.FlexrayTpPduPool;
import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.J1939TpConnection;
import autosar40.system.transportprotocols.J1939TpNode;
import autosar40.system.transportprotocols.LinTpConfig;
import autosar40.system.transportprotocols.LinTpConnection;
import autosar40.system.transportprotocols.LinTpNode;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TpConfig;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
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
                CanTpAddress canTpAddress = (CanTpAddress)theEObject;
                T result = this.caseCanTpAddress(canTpAddress);
                if (result == null) {
                    result = this.caseIdentifiable(canTpAddress);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canTpAddress);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canTpAddress);
                }
                if (result == null) {
                    result = this.caseReferrable(canTpAddress);
                }
                if (result == null) {
                    result = this.caseARObject(canTpAddress);
                }
                if (result == null) {
                    result = this.caseGReferrable(canTpAddress);
                }
                if (result == null) {
                    result = this.caseGARObject(canTpAddress);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CanTpChannel canTpChannel = (CanTpChannel)theEObject;
                T result = this.caseCanTpChannel(canTpChannel);
                if (result == null) {
                    result = this.caseIdentifiable(canTpChannel);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canTpChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canTpChannel);
                }
                if (result == null) {
                    result = this.caseReferrable(canTpChannel);
                }
                if (result == null) {
                    result = this.caseARObject(canTpChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable(canTpChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(canTpChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CanTpConfig canTpConfig = (CanTpConfig)theEObject;
                T result = this.caseCanTpConfig(canTpConfig);
                if (result == null) {
                    result = this.caseTpConfig(canTpConfig);
                }
                if (result == null) {
                    result = this.caseFibexElement(canTpConfig);
                }
                if (result == null) {
                    result = this.casePackageableElement(canTpConfig);
                }
                if (result == null) {
                    result = this.caseCollectableElement(canTpConfig);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(canTpConfig);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canTpConfig);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canTpConfig);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canTpConfig);
                }
                if (result == null) {
                    result = this.caseReferrable(canTpConfig);
                }
                if (result == null) {
                    result = this.caseARObject(canTpConfig);
                }
                if (result == null) {
                    result = this.caseGReferrable(canTpConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(canTpConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                TpConfig tpConfig = (TpConfig)theEObject;
                T result = this.caseTpConfig(tpConfig);
                if (result == null) {
                    result = this.caseFibexElement(tpConfig);
                }
                if (result == null) {
                    result = this.casePackageableElement(tpConfig);
                }
                if (result == null) {
                    result = this.caseCollectableElement(tpConfig);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(tpConfig);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tpConfig);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tpConfig);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tpConfig);
                }
                if (result == null) {
                    result = this.caseReferrable(tpConfig);
                }
                if (result == null) {
                    result = this.caseARObject(tpConfig);
                }
                if (result == null) {
                    result = this.caseGReferrable(tpConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(tpConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CanTpConnection canTpConnection = (CanTpConnection)theEObject;
                T result = this.caseCanTpConnection(canTpConnection);
                if (result == null) {
                    result = this.caseARObject(canTpConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(canTpConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                CanTpNode canTpNode = (CanTpNode)theEObject;
                T result = this.caseCanTpNode(canTpNode);
                if (result == null) {
                    result = this.caseIdentifiable(canTpNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canTpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canTpNode);
                }
                if (result == null) {
                    result = this.caseReferrable(canTpNode);
                }
                if (result == null) {
                    result = this.caseARObject(canTpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(canTpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(canTpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                CanTpEcu canTpEcu = (CanTpEcu)theEObject;
                T result = this.caseCanTpEcu(canTpEcu);
                if (result == null) {
                    result = this.caseARObject(canTpEcu);
                }
                if (result == null) {
                    result = this.caseGARObject(canTpEcu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                FlexrayArTpChannel flexrayArTpChannel = (FlexrayArTpChannel)theEObject;
                T result = this.caseFlexrayArTpChannel(flexrayArTpChannel);
                if (result == null) {
                    result = this.caseARObject(flexrayArTpChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayArTpChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                FlexrayArTpConnection flexrayArTpConnection = (FlexrayArTpConnection)theEObject;
                T result = this.caseFlexrayArTpConnection(flexrayArTpConnection);
                if (result == null) {
                    result = this.caseARObject(flexrayArTpConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayArTpConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                FlexrayArTpNode flexrayArTpNode = (FlexrayArTpNode)theEObject;
                T result = this.caseFlexrayArTpNode(flexrayArTpNode);
                if (result == null) {
                    result = this.caseIdentifiable(flexrayArTpNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayArTpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayArTpNode);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayArTpNode);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayArTpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayArTpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayArTpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                FlexrayArTpConfig flexrayArTpConfig = (FlexrayArTpConfig)theEObject;
                T result = this.caseFlexrayArTpConfig(flexrayArTpConfig);
                if (result == null) {
                    result = this.caseTpConfig(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseFibexElement(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.casePackageableElement(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseCollectableElement(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayArTpConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                FlexrayTpConfig flexrayTpConfig = (FlexrayTpConfig)theEObject;
                T result = this.caseFlexrayTpConfig(flexrayTpConfig);
                if (result == null) {
                    result = this.caseTpConfig(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseFibexElement(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.casePackageableElement(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseCollectableElement(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayTpConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                FlexrayTpConnectionControl flexrayTpConnectionControl = (FlexrayTpConnectionControl)theEObject;
                T result = this.caseFlexrayTpConnectionControl(flexrayTpConnectionControl);
                if (result == null) {
                    result = this.caseIdentifiable(flexrayTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayTpConnectionControl);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayTpConnectionControl);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                FlexrayTpEcu flexrayTpEcu = (FlexrayTpEcu)theEObject;
                T result = this.caseFlexrayTpEcu(flexrayTpEcu);
                if (result == null) {
                    result = this.caseARObject(flexrayTpEcu);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayTpEcu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                FlexrayTpConnection flexrayTpConnection = (FlexrayTpConnection)theEObject;
                T result = this.caseFlexrayTpConnection(flexrayTpConnection);
                if (result == null) {
                    result = this.caseARObject(flexrayTpConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayTpConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                FlexrayTpPduPool flexrayTpPduPool = (FlexrayTpPduPool)theEObject;
                T result = this.caseFlexrayTpPduPool(flexrayTpPduPool);
                if (result == null) {
                    result = this.caseIdentifiable(flexrayTpPduPool);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayTpPduPool);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayTpPduPool);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayTpPduPool);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayTpPduPool);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayTpPduPool);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayTpPduPool);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                FlexrayTpNode flexrayTpNode = (FlexrayTpNode)theEObject;
                T result = this.caseFlexrayTpNode(flexrayTpNode);
                if (result == null) {
                    result = this.caseIdentifiable(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayTpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayTpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                J1939TpConfig j1939TpConfig = (J1939TpConfig)theEObject;
                T result = this.caseJ1939TpConfig(j1939TpConfig);
                if (result == null) {
                    result = this.caseTpConfig(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseFibexElement(j1939TpConfig);
                }
                if (result == null) {
                    result = this.casePackageableElement(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseCollectableElement(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseIdentifiable(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseReferrable(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseARObject(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseGReferrable(j1939TpConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(j1939TpConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                J1939TpNode j1939TpNode = (J1939TpNode)theEObject;
                T result = this.caseJ1939TpNode(j1939TpNode);
                if (result == null) {
                    result = this.caseIdentifiable(j1939TpNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(j1939TpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(j1939TpNode);
                }
                if (result == null) {
                    result = this.caseReferrable(j1939TpNode);
                }
                if (result == null) {
                    result = this.caseARObject(j1939TpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(j1939TpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(j1939TpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                J1939TpConnection j1939TpConnection = (J1939TpConnection)theEObject;
                T result = this.caseJ1939TpConnection(j1939TpConnection);
                if (result == null) {
                    result = this.caseARObject(j1939TpConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(j1939TpConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                LinTpConfig linTpConfig = (LinTpConfig)theEObject;
                T result = this.caseLinTpConfig(linTpConfig);
                if (result == null) {
                    result = this.caseTpConfig(linTpConfig);
                }
                if (result == null) {
                    result = this.caseFibexElement(linTpConfig);
                }
                if (result == null) {
                    result = this.casePackageableElement(linTpConfig);
                }
                if (result == null) {
                    result = this.caseCollectableElement(linTpConfig);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(linTpConfig);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linTpConfig);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linTpConfig);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linTpConfig);
                }
                if (result == null) {
                    result = this.caseReferrable(linTpConfig);
                }
                if (result == null) {
                    result = this.caseARObject(linTpConfig);
                }
                if (result == null) {
                    result = this.caseGReferrable(linTpConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(linTpConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                LinTpConnection linTpConnection = (LinTpConnection)theEObject;
                T result = this.caseLinTpConnection(linTpConnection);
                if (result == null) {
                    result = this.caseARObject(linTpConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(linTpConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                LinTpNode linTpNode = (LinTpNode)theEObject;
                T result = this.caseLinTpNode(linTpNode);
                if (result == null) {
                    result = this.caseIdentifiable(linTpNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linTpNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linTpNode);
                }
                if (result == null) {
                    result = this.caseReferrable(linTpNode);
                }
                if (result == null) {
                    result = this.caseARObject(linTpNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(linTpNode);
                }
                if (result == null) {
                    result = this.caseGARObject(linTpNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                TpAddress tpAddress = (TpAddress)theEObject;
                T result = this.caseTpAddress(tpAddress);
                if (result == null) {
                    result = this.caseIdentifiable(tpAddress);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tpAddress);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tpAddress);
                }
                if (result == null) {
                    result = this.caseReferrable(tpAddress);
                }
                if (result == null) {
                    result = this.caseARObject(tpAddress);
                }
                if (result == null) {
                    result = this.caseGReferrable(tpAddress);
                }
                if (result == null) {
                    result = this.caseGARObject(tpAddress);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCanTpAddress(CanTpAddress object) {
        return null;
    }

    public T caseCanTpChannel(CanTpChannel object) {
        return null;
    }

    public T caseCanTpConfig(CanTpConfig object) {
        return null;
    }

    public T caseTpConfig(TpConfig object) {
        return null;
    }

    public T caseCanTpConnection(CanTpConnection object) {
        return null;
    }

    public T caseCanTpNode(CanTpNode object) {
        return null;
    }

    public T caseCanTpEcu(CanTpEcu object) {
        return null;
    }

    public T caseFlexrayArTpChannel(FlexrayArTpChannel object) {
        return null;
    }

    public T caseFlexrayArTpConnection(FlexrayArTpConnection object) {
        return null;
    }

    public T caseFlexrayArTpNode(FlexrayArTpNode object) {
        return null;
    }

    public T caseFlexrayArTpConfig(FlexrayArTpConfig object) {
        return null;
    }

    public T caseFlexrayTpConfig(FlexrayTpConfig object) {
        return null;
    }

    public T caseFlexrayTpConnectionControl(FlexrayTpConnectionControl object) {
        return null;
    }

    public T caseFlexrayTpEcu(FlexrayTpEcu object) {
        return null;
    }

    public T caseFlexrayTpConnection(FlexrayTpConnection object) {
        return null;
    }

    public T caseFlexrayTpPduPool(FlexrayTpPduPool object) {
        return null;
    }

    public T caseFlexrayTpNode(FlexrayTpNode object) {
        return null;
    }

    public T caseJ1939TpConfig(J1939TpConfig object) {
        return null;
    }

    public T caseJ1939TpNode(J1939TpNode object) {
        return null;
    }

    public T caseJ1939TpConnection(J1939TpConnection object) {
        return null;
    }

    public T caseLinTpConfig(LinTpConfig object) {
        return null;
    }

    public T caseLinTpConnection(LinTpConnection object) {
        return null;
    }

    public T caseLinTpNode(LinTpNode object) {
        return null;
    }

    public T caseTpAddress(TpAddress object) {
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

    public T caseCollectableElement(CollectableElement object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

