/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.networkmanagement.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.networkmanagement.BusspecificNmEcu;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmCoordinator;
import autosar40.system.networkmanagement.NmEcu;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class NmEcuImpl
extends IdentifiableImpl
implements NmEcu,
IReferringClass {
    protected BusspecificNmEcu busSpecificNmEcu;
    protected EcuInstance ecuInstance;
    protected static final Boolean NM_BUS_SYNCHRONIZATION_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmBusSynchronizationEnabled = NM_BUS_SYNCHRONIZATION_ENABLED_EDEFAULT;
    protected boolean nmBusSynchronizationEnabledESet;
    protected static final Boolean NM_COM_CONTROL_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmComControlEnabled = NM_COM_CONTROL_ENABLED_EDEFAULT;
    protected boolean nmComControlEnabledESet;
    protected NmCoordinator nmCoordinator;
    protected static final Double NM_CYCLETIME_MAIN_FUNCTION_EDEFAULT = new Double(0.0);
    protected Double nmCycletimeMainFunction = NM_CYCLETIME_MAIN_FUNCTION_EDEFAULT;
    protected boolean nmCycletimeMainFunctionESet;
    protected static final Boolean NM_MULTIPLE_CHANNELS_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmMultipleChannelsEnabled = NM_MULTIPLE_CHANNELS_ENABLED_EDEFAULT;
    protected boolean nmMultipleChannelsEnabledESet;
    protected static final Boolean NM_NODE_DETECTION_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmNodeDetectionEnabled = NM_NODE_DETECTION_ENABLED_EDEFAULT;
    protected boolean nmNodeDetectionEnabledESet;
    protected static final Boolean NM_NODE_ID_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmNodeIdEnabled = NM_NODE_ID_ENABLED_EDEFAULT;
    protected boolean nmNodeIdEnabledESet;
    protected static final Boolean NM_PASSIVE_MODE_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmPassiveModeEnabled = NM_PASSIVE_MODE_ENABLED_EDEFAULT;
    protected boolean nmPassiveModeEnabledESet;
    protected static final Boolean NM_PDU_RX_INDICATION_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmPduRxIndicationEnabled = NM_PDU_RX_INDICATION_ENABLED_EDEFAULT;
    protected boolean nmPduRxIndicationEnabledESet;
    protected static final Boolean NM_REMOTE_SLEEP_IND_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmRemoteSleepIndEnabled = NM_REMOTE_SLEEP_IND_ENABLED_EDEFAULT;
    protected boolean nmRemoteSleepIndEnabledESet;
    protected static final Boolean NM_REPEAT_MSG_IND_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmRepeatMsgIndEnabled = NM_REPEAT_MSG_IND_ENABLED_EDEFAULT;
    protected boolean nmRepeatMsgIndEnabledESet;
    protected static final Boolean NM_STATE_CHANGE_IND_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmStateChangeIndEnabled = NM_STATE_CHANGE_IND_ENABLED_EDEFAULT;
    protected boolean nmStateChangeIndEnabledESet;
    protected static final Boolean NM_USER_DATA_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmUserDataEnabled = NM_USER_DATA_ENABLED_EDEFAULT;
    protected boolean nmUserDataEnabledESet;
    protected VariationPoint variationPoint;

    protected NmEcuImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.NM_ECU;
    }

    public NmConfig getNmConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (NmConfig)this.eContainer();
    }

    public NotificationChain basicSetNmConfig(NmConfig newNmConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newNmConfig, 18, msgs);
        return msgs;
    }

    public void setNmConfig(NmConfig newNmConfig) {
        if (newNmConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newNmConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newNmConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newNmConfig != null) {
                msgs = ((InternalEObject)newNmConfig).eInverseAdd((InternalEObject)this, 23, NmConfig.class, msgs);
            }
            if ((msgs = this.basicSetNmConfig(newNmConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newNmConfig, (Object)newNmConfig));
        }
    }

    public BusspecificNmEcu getBusSpecificNmEcu() {
        return this.busSpecificNmEcu;
    }

    public NotificationChain basicSetBusSpecificNmEcu(BusspecificNmEcu newBusSpecificNmEcu, NotificationChain msgs) {
        BusspecificNmEcu oldBusSpecificNmEcu = this.busSpecificNmEcu;
        this.busSpecificNmEcu = newBusSpecificNmEcu;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldBusSpecificNmEcu, (Object)newBusSpecificNmEcu);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setBusSpecificNmEcu(BusspecificNmEcu newBusSpecificNmEcu) {
        if (newBusSpecificNmEcu != this.busSpecificNmEcu) {
            NotificationChain msgs = null;
            if (this.busSpecificNmEcu != null) {
                msgs = ((InternalEObject)this.busSpecificNmEcu).eInverseRemove((InternalEObject)this, 4, BusspecificNmEcu.class, msgs);
            }
            if (newBusSpecificNmEcu != null) {
                msgs = ((InternalEObject)newBusSpecificNmEcu).eInverseAdd((InternalEObject)this, 4, BusspecificNmEcu.class, msgs);
            }
            if ((msgs = this.basicSetBusSpecificNmEcu(newBusSpecificNmEcu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newBusSpecificNmEcu, (Object)newBusSpecificNmEcu));
        }
    }

    public EcuInstance getEcuInstance() {
        if (this.ecuInstance != null && this.ecuInstance.eIsProxy()) {
            InternalEObject oldEcuInstance = (InternalEObject)this.ecuInstance;
            this.ecuInstance = (EcuInstance)this.eResolveProxy(oldEcuInstance);
            if (this.ecuInstance != oldEcuInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldEcuInstance, (Object)this.ecuInstance));
            }
        }
        return this.ecuInstance;
    }

    public EcuInstance basicGetEcuInstance() {
        return this.ecuInstance;
    }

    public void setEcuInstance(EcuInstance newEcuInstance) {
        EcuInstance oldEcuInstance = this.ecuInstance;
        this.ecuInstance = newEcuInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldEcuInstance, (Object)this.ecuInstance));
        }
    }

    public Boolean getNmBusSynchronizationEnabled() {
        return this.nmBusSynchronizationEnabled;
    }

    public void setNmBusSynchronizationEnabled(Boolean newNmBusSynchronizationEnabled) {
        Boolean oldNmBusSynchronizationEnabled = this.nmBusSynchronizationEnabled;
        this.nmBusSynchronizationEnabled = newNmBusSynchronizationEnabled;
        boolean oldNmBusSynchronizationEnabledESet = this.nmBusSynchronizationEnabledESet;
        this.nmBusSynchronizationEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNmBusSynchronizationEnabled, (Object)this.nmBusSynchronizationEnabled, !oldNmBusSynchronizationEnabledESet));
        }
    }

    public void unsetNmBusSynchronizationEnabled() {
        Boolean oldNmBusSynchronizationEnabled = this.nmBusSynchronizationEnabled;
        boolean oldNmBusSynchronizationEnabledESet = this.nmBusSynchronizationEnabledESet;
        this.nmBusSynchronizationEnabled = NM_BUS_SYNCHRONIZATION_ENABLED_EDEFAULT;
        this.nmBusSynchronizationEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNmBusSynchronizationEnabled, (Object)NM_BUS_SYNCHRONIZATION_ENABLED_EDEFAULT, oldNmBusSynchronizationEnabledESet));
        }
    }

    public boolean isSetNmBusSynchronizationEnabled() {
        return this.nmBusSynchronizationEnabledESet;
    }

    public Boolean getNmComControlEnabled() {
        return this.nmComControlEnabled;
    }

    public void setNmComControlEnabled(Boolean newNmComControlEnabled) {
        Boolean oldNmComControlEnabled = this.nmComControlEnabled;
        this.nmComControlEnabled = newNmComControlEnabled;
        boolean oldNmComControlEnabledESet = this.nmComControlEnabledESet;
        this.nmComControlEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldNmComControlEnabled, (Object)this.nmComControlEnabled, !oldNmComControlEnabledESet));
        }
    }

    public void unsetNmComControlEnabled() {
        Boolean oldNmComControlEnabled = this.nmComControlEnabled;
        boolean oldNmComControlEnabledESet = this.nmComControlEnabledESet;
        this.nmComControlEnabled = NM_COM_CONTROL_ENABLED_EDEFAULT;
        this.nmComControlEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldNmComControlEnabled, (Object)NM_COM_CONTROL_ENABLED_EDEFAULT, oldNmComControlEnabledESet));
        }
    }

    public boolean isSetNmComControlEnabled() {
        return this.nmComControlEnabledESet;
    }

    public NmCoordinator getNmCoordinator() {
        return this.nmCoordinator;
    }

    public NotificationChain basicSetNmCoordinator(NmCoordinator newNmCoordinator, NotificationChain msgs) {
        NmCoordinator oldNmCoordinator = this.nmCoordinator;
        this.nmCoordinator = newNmCoordinator;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldNmCoordinator, (Object)newNmCoordinator);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setNmCoordinator(NmCoordinator newNmCoordinator) {
        if (newNmCoordinator != this.nmCoordinator) {
            NotificationChain msgs = null;
            if (this.nmCoordinator != null) {
                msgs = ((InternalEObject)this.nmCoordinator).eInverseRemove((InternalEObject)this, 4, NmCoordinator.class, msgs);
            }
            if (newNmCoordinator != null) {
                msgs = ((InternalEObject)newNmCoordinator).eInverseAdd((InternalEObject)this, 4, NmCoordinator.class, msgs);
            }
            if ((msgs = this.basicSetNmCoordinator(newNmCoordinator, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newNmCoordinator, (Object)newNmCoordinator));
        }
    }

    public Double getNmCycletimeMainFunction() {
        return this.nmCycletimeMainFunction;
    }

    public void setNmCycletimeMainFunction(Double newNmCycletimeMainFunction) {
        Double oldNmCycletimeMainFunction = this.nmCycletimeMainFunction;
        this.nmCycletimeMainFunction = newNmCycletimeMainFunction;
        boolean oldNmCycletimeMainFunctionESet = this.nmCycletimeMainFunctionESet;
        this.nmCycletimeMainFunctionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldNmCycletimeMainFunction, (Object)this.nmCycletimeMainFunction, !oldNmCycletimeMainFunctionESet));
        }
    }

    public void unsetNmCycletimeMainFunction() {
        Double oldNmCycletimeMainFunction = this.nmCycletimeMainFunction;
        boolean oldNmCycletimeMainFunctionESet = this.nmCycletimeMainFunctionESet;
        this.nmCycletimeMainFunction = NM_CYCLETIME_MAIN_FUNCTION_EDEFAULT;
        this.nmCycletimeMainFunctionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldNmCycletimeMainFunction, (Object)NM_CYCLETIME_MAIN_FUNCTION_EDEFAULT, oldNmCycletimeMainFunctionESet));
        }
    }

    public boolean isSetNmCycletimeMainFunction() {
        return this.nmCycletimeMainFunctionESet;
    }

    public Boolean getNmMultipleChannelsEnabled() {
        return this.nmMultipleChannelsEnabled;
    }

    public void setNmMultipleChannelsEnabled(Boolean newNmMultipleChannelsEnabled) {
        Boolean oldNmMultipleChannelsEnabled = this.nmMultipleChannelsEnabled;
        this.nmMultipleChannelsEnabled = newNmMultipleChannelsEnabled;
        boolean oldNmMultipleChannelsEnabledESet = this.nmMultipleChannelsEnabledESet;
        this.nmMultipleChannelsEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldNmMultipleChannelsEnabled, (Object)this.nmMultipleChannelsEnabled, !oldNmMultipleChannelsEnabledESet));
        }
    }

    public void unsetNmMultipleChannelsEnabled() {
        Boolean oldNmMultipleChannelsEnabled = this.nmMultipleChannelsEnabled;
        boolean oldNmMultipleChannelsEnabledESet = this.nmMultipleChannelsEnabledESet;
        this.nmMultipleChannelsEnabled = NM_MULTIPLE_CHANNELS_ENABLED_EDEFAULT;
        this.nmMultipleChannelsEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldNmMultipleChannelsEnabled, (Object)NM_MULTIPLE_CHANNELS_ENABLED_EDEFAULT, oldNmMultipleChannelsEnabledESet));
        }
    }

    public boolean isSetNmMultipleChannelsEnabled() {
        return this.nmMultipleChannelsEnabledESet;
    }

    public Boolean getNmNodeDetectionEnabled() {
        return this.nmNodeDetectionEnabled;
    }

    public void setNmNodeDetectionEnabled(Boolean newNmNodeDetectionEnabled) {
        Boolean oldNmNodeDetectionEnabled = this.nmNodeDetectionEnabled;
        this.nmNodeDetectionEnabled = newNmNodeDetectionEnabled;
        boolean oldNmNodeDetectionEnabledESet = this.nmNodeDetectionEnabledESet;
        this.nmNodeDetectionEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldNmNodeDetectionEnabled, (Object)this.nmNodeDetectionEnabled, !oldNmNodeDetectionEnabledESet));
        }
    }

    public void unsetNmNodeDetectionEnabled() {
        Boolean oldNmNodeDetectionEnabled = this.nmNodeDetectionEnabled;
        boolean oldNmNodeDetectionEnabledESet = this.nmNodeDetectionEnabledESet;
        this.nmNodeDetectionEnabled = NM_NODE_DETECTION_ENABLED_EDEFAULT;
        this.nmNodeDetectionEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldNmNodeDetectionEnabled, (Object)NM_NODE_DETECTION_ENABLED_EDEFAULT, oldNmNodeDetectionEnabledESet));
        }
    }

    public boolean isSetNmNodeDetectionEnabled() {
        return this.nmNodeDetectionEnabledESet;
    }

    public Boolean getNmNodeIdEnabled() {
        return this.nmNodeIdEnabled;
    }

    public void setNmNodeIdEnabled(Boolean newNmNodeIdEnabled) {
        Boolean oldNmNodeIdEnabled = this.nmNodeIdEnabled;
        this.nmNodeIdEnabled = newNmNodeIdEnabled;
        boolean oldNmNodeIdEnabledESet = this.nmNodeIdEnabledESet;
        this.nmNodeIdEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldNmNodeIdEnabled, (Object)this.nmNodeIdEnabled, !oldNmNodeIdEnabledESet));
        }
    }

    public void unsetNmNodeIdEnabled() {
        Boolean oldNmNodeIdEnabled = this.nmNodeIdEnabled;
        boolean oldNmNodeIdEnabledESet = this.nmNodeIdEnabledESet;
        this.nmNodeIdEnabled = NM_NODE_ID_ENABLED_EDEFAULT;
        this.nmNodeIdEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldNmNodeIdEnabled, (Object)NM_NODE_ID_ENABLED_EDEFAULT, oldNmNodeIdEnabledESet));
        }
    }

    public boolean isSetNmNodeIdEnabled() {
        return this.nmNodeIdEnabledESet;
    }

    public Boolean getNmPassiveModeEnabled() {
        return this.nmPassiveModeEnabled;
    }

    public void setNmPassiveModeEnabled(Boolean newNmPassiveModeEnabled) {
        Boolean oldNmPassiveModeEnabled = this.nmPassiveModeEnabled;
        this.nmPassiveModeEnabled = newNmPassiveModeEnabled;
        boolean oldNmPassiveModeEnabledESet = this.nmPassiveModeEnabledESet;
        this.nmPassiveModeEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldNmPassiveModeEnabled, (Object)this.nmPassiveModeEnabled, !oldNmPassiveModeEnabledESet));
        }
    }

    public void unsetNmPassiveModeEnabled() {
        Boolean oldNmPassiveModeEnabled = this.nmPassiveModeEnabled;
        boolean oldNmPassiveModeEnabledESet = this.nmPassiveModeEnabledESet;
        this.nmPassiveModeEnabled = NM_PASSIVE_MODE_ENABLED_EDEFAULT;
        this.nmPassiveModeEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldNmPassiveModeEnabled, (Object)NM_PASSIVE_MODE_ENABLED_EDEFAULT, oldNmPassiveModeEnabledESet));
        }
    }

    public boolean isSetNmPassiveModeEnabled() {
        return this.nmPassiveModeEnabledESet;
    }

    public Boolean getNmPduRxIndicationEnabled() {
        return this.nmPduRxIndicationEnabled;
    }

    public void setNmPduRxIndicationEnabled(Boolean newNmPduRxIndicationEnabled) {
        Boolean oldNmPduRxIndicationEnabled = this.nmPduRxIndicationEnabled;
        this.nmPduRxIndicationEnabled = newNmPduRxIndicationEnabled;
        boolean oldNmPduRxIndicationEnabledESet = this.nmPduRxIndicationEnabledESet;
        this.nmPduRxIndicationEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldNmPduRxIndicationEnabled, (Object)this.nmPduRxIndicationEnabled, !oldNmPduRxIndicationEnabledESet));
        }
    }

    public void unsetNmPduRxIndicationEnabled() {
        Boolean oldNmPduRxIndicationEnabled = this.nmPduRxIndicationEnabled;
        boolean oldNmPduRxIndicationEnabledESet = this.nmPduRxIndicationEnabledESet;
        this.nmPduRxIndicationEnabled = NM_PDU_RX_INDICATION_ENABLED_EDEFAULT;
        this.nmPduRxIndicationEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldNmPduRxIndicationEnabled, (Object)NM_PDU_RX_INDICATION_ENABLED_EDEFAULT, oldNmPduRxIndicationEnabledESet));
        }
    }

    public boolean isSetNmPduRxIndicationEnabled() {
        return this.nmPduRxIndicationEnabledESet;
    }

    public Boolean getNmRemoteSleepIndEnabled() {
        return this.nmRemoteSleepIndEnabled;
    }

    public void setNmRemoteSleepIndEnabled(Boolean newNmRemoteSleepIndEnabled) {
        Boolean oldNmRemoteSleepIndEnabled = this.nmRemoteSleepIndEnabled;
        this.nmRemoteSleepIndEnabled = newNmRemoteSleepIndEnabled;
        boolean oldNmRemoteSleepIndEnabledESet = this.nmRemoteSleepIndEnabledESet;
        this.nmRemoteSleepIndEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldNmRemoteSleepIndEnabled, (Object)this.nmRemoteSleepIndEnabled, !oldNmRemoteSleepIndEnabledESet));
        }
    }

    public void unsetNmRemoteSleepIndEnabled() {
        Boolean oldNmRemoteSleepIndEnabled = this.nmRemoteSleepIndEnabled;
        boolean oldNmRemoteSleepIndEnabledESet = this.nmRemoteSleepIndEnabledESet;
        this.nmRemoteSleepIndEnabled = NM_REMOTE_SLEEP_IND_ENABLED_EDEFAULT;
        this.nmRemoteSleepIndEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldNmRemoteSleepIndEnabled, (Object)NM_REMOTE_SLEEP_IND_ENABLED_EDEFAULT, oldNmRemoteSleepIndEnabledESet));
        }
    }

    public boolean isSetNmRemoteSleepIndEnabled() {
        return this.nmRemoteSleepIndEnabledESet;
    }

    public Boolean getNmRepeatMsgIndEnabled() {
        return this.nmRepeatMsgIndEnabled;
    }

    public void setNmRepeatMsgIndEnabled(Boolean newNmRepeatMsgIndEnabled) {
        Boolean oldNmRepeatMsgIndEnabled = this.nmRepeatMsgIndEnabled;
        this.nmRepeatMsgIndEnabled = newNmRepeatMsgIndEnabled;
        boolean oldNmRepeatMsgIndEnabledESet = this.nmRepeatMsgIndEnabledESet;
        this.nmRepeatMsgIndEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldNmRepeatMsgIndEnabled, (Object)this.nmRepeatMsgIndEnabled, !oldNmRepeatMsgIndEnabledESet));
        }
    }

    public void unsetNmRepeatMsgIndEnabled() {
        Boolean oldNmRepeatMsgIndEnabled = this.nmRepeatMsgIndEnabled;
        boolean oldNmRepeatMsgIndEnabledESet = this.nmRepeatMsgIndEnabledESet;
        this.nmRepeatMsgIndEnabled = NM_REPEAT_MSG_IND_ENABLED_EDEFAULT;
        this.nmRepeatMsgIndEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldNmRepeatMsgIndEnabled, (Object)NM_REPEAT_MSG_IND_ENABLED_EDEFAULT, oldNmRepeatMsgIndEnabledESet));
        }
    }

    public boolean isSetNmRepeatMsgIndEnabled() {
        return this.nmRepeatMsgIndEnabledESet;
    }

    public Boolean getNmStateChangeIndEnabled() {
        return this.nmStateChangeIndEnabled;
    }

    public void setNmStateChangeIndEnabled(Boolean newNmStateChangeIndEnabled) {
        Boolean oldNmStateChangeIndEnabled = this.nmStateChangeIndEnabled;
        this.nmStateChangeIndEnabled = newNmStateChangeIndEnabled;
        boolean oldNmStateChangeIndEnabledESet = this.nmStateChangeIndEnabledESet;
        this.nmStateChangeIndEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldNmStateChangeIndEnabled, (Object)this.nmStateChangeIndEnabled, !oldNmStateChangeIndEnabledESet));
        }
    }

    public void unsetNmStateChangeIndEnabled() {
        Boolean oldNmStateChangeIndEnabled = this.nmStateChangeIndEnabled;
        boolean oldNmStateChangeIndEnabledESet = this.nmStateChangeIndEnabledESet;
        this.nmStateChangeIndEnabled = NM_STATE_CHANGE_IND_ENABLED_EDEFAULT;
        this.nmStateChangeIndEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldNmStateChangeIndEnabled, (Object)NM_STATE_CHANGE_IND_ENABLED_EDEFAULT, oldNmStateChangeIndEnabledESet));
        }
    }

    public boolean isSetNmStateChangeIndEnabled() {
        return this.nmStateChangeIndEnabledESet;
    }

    public Boolean getNmUserDataEnabled() {
        return this.nmUserDataEnabled;
    }

    public void setNmUserDataEnabled(Boolean newNmUserDataEnabled) {
        Boolean oldNmUserDataEnabled = this.nmUserDataEnabled;
        this.nmUserDataEnabled = newNmUserDataEnabled;
        boolean oldNmUserDataEnabledESet = this.nmUserDataEnabledESet;
        this.nmUserDataEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldNmUserDataEnabled, (Object)this.nmUserDataEnabled, !oldNmUserDataEnabledESet));
        }
    }

    public void unsetNmUserDataEnabled() {
        Boolean oldNmUserDataEnabled = this.nmUserDataEnabled;
        boolean oldNmUserDataEnabledESet = this.nmUserDataEnabledESet;
        this.nmUserDataEnabled = NM_USER_DATA_ENABLED_EDEFAULT;
        this.nmUserDataEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldNmUserDataEnabled, (Object)NM_USER_DATA_ENABLED_EDEFAULT, oldNmUserDataEnabledESet));
        }
    }

    public boolean isSetNmUserDataEnabled() {
        return this.nmUserDataEnabledESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -35, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -35, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetNmConfig((NmConfig)otherEnd, msgs);
            }
            case 19: {
                if (this.busSpecificNmEcu != null) {
                    msgs = ((InternalEObject)this.busSpecificNmEcu).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetBusSpecificNmEcu((BusspecificNmEcu)otherEnd, msgs);
            }
            case 23: {
                if (this.nmCoordinator != null) {
                    msgs = ((InternalEObject)this.nmCoordinator).eInverseRemove((InternalEObject)this, -24, null, msgs);
                }
                return this.basicSetNmCoordinator((NmCoordinator)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetNmConfig(null, msgs);
            }
            case 19: {
                return this.basicSetBusSpecificNmEcu(null, msgs);
            }
            case 23: {
                return this.basicSetNmCoordinator(null, msgs);
            }
            case 34: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, NmConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getNmConfig();
            }
            case 19: {
                return this.getBusSpecificNmEcu();
            }
            case 20: {
                if (resolve) {
                    return this.getEcuInstance();
                }
                return this.basicGetEcuInstance();
            }
            case 21: {
                return this.getNmBusSynchronizationEnabled();
            }
            case 22: {
                return this.getNmComControlEnabled();
            }
            case 23: {
                return this.getNmCoordinator();
            }
            case 24: {
                return this.getNmCycletimeMainFunction();
            }
            case 25: {
                return this.getNmMultipleChannelsEnabled();
            }
            case 26: {
                return this.getNmNodeDetectionEnabled();
            }
            case 27: {
                return this.getNmNodeIdEnabled();
            }
            case 28: {
                return this.getNmPassiveModeEnabled();
            }
            case 29: {
                return this.getNmPduRxIndicationEnabled();
            }
            case 30: {
                return this.getNmRemoteSleepIndEnabled();
            }
            case 31: {
                return this.getNmRepeatMsgIndEnabled();
            }
            case 32: {
                return this.getNmStateChangeIndEnabled();
            }
            case 33: {
                return this.getNmUserDataEnabled();
            }
            case 34: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setNmConfig((NmConfig)newValue);
                return;
            }
            case 19: {
                this.setBusSpecificNmEcu((BusspecificNmEcu)newValue);
                return;
            }
            case 20: {
                this.setEcuInstance((EcuInstance)newValue);
                return;
            }
            case 21: {
                this.setNmBusSynchronizationEnabled((Boolean)newValue);
                return;
            }
            case 22: {
                this.setNmComControlEnabled((Boolean)newValue);
                return;
            }
            case 23: {
                this.setNmCoordinator((NmCoordinator)newValue);
                return;
            }
            case 24: {
                this.setNmCycletimeMainFunction((Double)newValue);
                return;
            }
            case 25: {
                this.setNmMultipleChannelsEnabled((Boolean)newValue);
                return;
            }
            case 26: {
                this.setNmNodeDetectionEnabled((Boolean)newValue);
                return;
            }
            case 27: {
                this.setNmNodeIdEnabled((Boolean)newValue);
                return;
            }
            case 28: {
                this.setNmPassiveModeEnabled((Boolean)newValue);
                return;
            }
            case 29: {
                this.setNmPduRxIndicationEnabled((Boolean)newValue);
                return;
            }
            case 30: {
                this.setNmRemoteSleepIndEnabled((Boolean)newValue);
                return;
            }
            case 31: {
                this.setNmRepeatMsgIndEnabled((Boolean)newValue);
                return;
            }
            case 32: {
                this.setNmStateChangeIndEnabled((Boolean)newValue);
                return;
            }
            case 33: {
                this.setNmUserDataEnabled((Boolean)newValue);
                return;
            }
            case 34: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setNmConfig(null);
                return;
            }
            case 19: {
                this.setBusSpecificNmEcu(null);
                return;
            }
            case 20: {
                this.setEcuInstance(null);
                return;
            }
            case 21: {
                this.unsetNmBusSynchronizationEnabled();
                return;
            }
            case 22: {
                this.unsetNmComControlEnabled();
                return;
            }
            case 23: {
                this.setNmCoordinator(null);
                return;
            }
            case 24: {
                this.unsetNmCycletimeMainFunction();
                return;
            }
            case 25: {
                this.unsetNmMultipleChannelsEnabled();
                return;
            }
            case 26: {
                this.unsetNmNodeDetectionEnabled();
                return;
            }
            case 27: {
                this.unsetNmNodeIdEnabled();
                return;
            }
            case 28: {
                this.unsetNmPassiveModeEnabled();
                return;
            }
            case 29: {
                this.unsetNmPduRxIndicationEnabled();
                return;
            }
            case 30: {
                this.unsetNmRemoteSleepIndEnabled();
                return;
            }
            case 31: {
                this.unsetNmRepeatMsgIndEnabled();
                return;
            }
            case 32: {
                this.unsetNmStateChangeIndEnabled();
                return;
            }
            case 33: {
                this.unsetNmUserDataEnabled();
                return;
            }
            case 34: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getNmConfig() != null;
            }
            case 19: {
                return this.busSpecificNmEcu != null;
            }
            case 20: {
                return this.ecuInstance != null;
            }
            case 21: {
                return this.isSetNmBusSynchronizationEnabled();
            }
            case 22: {
                return this.isSetNmComControlEnabled();
            }
            case 23: {
                return this.nmCoordinator != null;
            }
            case 24: {
                return this.isSetNmCycletimeMainFunction();
            }
            case 25: {
                return this.isSetNmMultipleChannelsEnabled();
            }
            case 26: {
                return this.isSetNmNodeDetectionEnabled();
            }
            case 27: {
                return this.isSetNmNodeIdEnabled();
            }
            case 28: {
                return this.isSetNmPassiveModeEnabled();
            }
            case 29: {
                return this.isSetNmPduRxIndicationEnabled();
            }
            case 30: {
                return this.isSetNmRemoteSleepIndEnabled();
            }
            case 31: {
                return this.isSetNmRepeatMsgIndEnabled();
            }
            case 32: {
                return this.isSetNmStateChangeIndEnabled();
            }
            case 33: {
                return this.isSetNmUserDataEnabled();
            }
            case 34: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmBusSynchronizationEnabled: ");
        if (this.nmBusSynchronizationEnabledESet) {
            result.append(this.nmBusSynchronizationEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmComControlEnabled: ");
        if (this.nmComControlEnabledESet) {
            result.append(this.nmComControlEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmCycletimeMainFunction: ");
        if (this.nmCycletimeMainFunctionESet) {
            result.append(this.nmCycletimeMainFunction);
        } else {
            result.append("<unset>");
        }
        result.append(", nmMultipleChannelsEnabled: ");
        if (this.nmMultipleChannelsEnabledESet) {
            result.append(this.nmMultipleChannelsEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmNodeDetectionEnabled: ");
        if (this.nmNodeDetectionEnabledESet) {
            result.append(this.nmNodeDetectionEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmNodeIdEnabled: ");
        if (this.nmNodeIdEnabledESet) {
            result.append(this.nmNodeIdEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmPassiveModeEnabled: ");
        if (this.nmPassiveModeEnabledESet) {
            result.append(this.nmPassiveModeEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmPduRxIndicationEnabled: ");
        if (this.nmPduRxIndicationEnabledESet) {
            result.append(this.nmPduRxIndicationEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRemoteSleepIndEnabled: ");
        if (this.nmRemoteSleepIndEnabledESet) {
            result.append(this.nmRemoteSleepIndEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRepeatMsgIndEnabled: ");
        if (this.nmRepeatMsgIndEnabledESet) {
            result.append(this.nmRepeatMsgIndEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmStateChangeIndEnabled: ");
        if (this.nmStateChangeIndEnabledESet) {
            result.append(this.nmStateChangeIndEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmUserDataEnabled: ");
        if (this.nmUserDataEnabledESet) {
            result.append(this.nmUserDataEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

