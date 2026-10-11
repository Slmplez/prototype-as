/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.networkmanagement.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.NmPdu;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmCluster;
import autosar40.system.networkmanagement.NmEcu;
import autosar40.system.networkmanagement.NmNode;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NmNodeImpl
extends IdentifiableImpl
implements NmNode,
IReferringClass {
    protected CommunicationController controller;
    protected NmEcu nmIfEcu;
    protected static final IntegerDatatype NM_NODE_ID_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype nmNodeId = NM_NODE_ID_EDEFAULT.clone();
    protected boolean nmNodeIdESet;
    protected static final Boolean NM_PASSIVE_MODE_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmPassiveModeEnabled = NM_PASSIVE_MODE_ENABLED_EDEFAULT;
    protected boolean nmPassiveModeEnabledESet;
    protected EList<NmPdu> rxNmPdus;
    protected EList<NmPdu> txNmPdus;
    protected VariationPoint variationPoint;

    protected NmNodeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.NM_NODE;
    }

    @Override
    public NmCluster getNmCluster() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (NmCluster)this.eContainer();
    }

    public NotificationChain basicSetNmCluster(NmCluster newNmCluster, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newNmCluster, 18, msgs);
        return msgs;
    }

    @Override
    public void setNmCluster(NmCluster newNmCluster) {
        if (newNmCluster != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newNmCluster != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newNmCluster)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newNmCluster != null) {
                msgs = ((InternalEObject)newNmCluster).eInverseAdd((InternalEObject)this, 22, NmCluster.class, msgs);
            }
            if ((msgs = this.basicSetNmCluster(newNmCluster, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newNmCluster, (Object)newNmCluster));
        }
    }

    @Override
    public CommunicationController getController() {
        if (this.controller != null && this.controller.eIsProxy()) {
            InternalEObject oldController = (InternalEObject)this.controller;
            this.controller = (CommunicationController)this.eResolveProxy(oldController);
            if (this.controller != oldController && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldController, (Object)this.controller));
            }
        }
        return this.controller;
    }

    public CommunicationController basicGetController() {
        return this.controller;
    }

    @Override
    public void setController(CommunicationController newController) {
        CommunicationController oldController = this.controller;
        this.controller = newController;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldController, (Object)this.controller));
        }
    }

    @Override
    public NmEcu getNmIfEcu() {
        if (this.nmIfEcu != null && this.nmIfEcu.eIsProxy()) {
            InternalEObject oldNmIfEcu = (InternalEObject)this.nmIfEcu;
            this.nmIfEcu = (NmEcu)this.eResolveProxy(oldNmIfEcu);
            if (this.nmIfEcu != oldNmIfEcu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldNmIfEcu, (Object)this.nmIfEcu));
            }
        }
        return this.nmIfEcu;
    }

    public NmEcu basicGetNmIfEcu() {
        return this.nmIfEcu;
    }

    @Override
    public void setNmIfEcu(NmEcu newNmIfEcu) {
        NmEcu oldNmIfEcu = this.nmIfEcu;
        this.nmIfEcu = newNmIfEcu;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldNmIfEcu, (Object)this.nmIfEcu));
        }
    }

    @Override
    public Integer getNmNodeId() {
        return (Integer)this.nmNodeId.basicGetValue();
    }

    @Override
    public void setNmNodeId(Integer newNmNodeId) {
        Integer oldNmNodeId = (Integer)this.nmNodeId.basicGetValue();
        this.nmNodeId.basicSetValue((Object)newNmNodeId);
        boolean oldNmNodeIdESet = this.nmNodeIdESet;
        this.nmNodeIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNmNodeId, (Object)newNmNodeId, !oldNmNodeIdESet));
        }
    }

    @Override
    public void unsetNmNodeId() {
        Integer oldNmNodeId = (Integer)this.nmNodeId.basicGetValue();
        boolean oldNmNodeIdESet = this.nmNodeIdESet;
        this.nmNodeId = NM_NODE_ID_EDEFAULT.clone();
        this.nmNodeIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNmNodeId, (Object)NM_NODE_ID_EDEFAULT, oldNmNodeIdESet));
        }
    }

    @Override
    public boolean isSetNmNodeId() {
        return this.nmNodeIdESet;
    }

    @Override
    public Boolean getNmPassiveModeEnabled() {
        return this.nmPassiveModeEnabled;
    }

    @Override
    public void setNmPassiveModeEnabled(Boolean newNmPassiveModeEnabled) {
        Boolean oldNmPassiveModeEnabled = this.nmPassiveModeEnabled;
        this.nmPassiveModeEnabled = newNmPassiveModeEnabled;
        boolean oldNmPassiveModeEnabledESet = this.nmPassiveModeEnabledESet;
        this.nmPassiveModeEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldNmPassiveModeEnabled, (Object)this.nmPassiveModeEnabled, !oldNmPassiveModeEnabledESet));
        }
    }

    @Override
    public void unsetNmPassiveModeEnabled() {
        Boolean oldNmPassiveModeEnabled = this.nmPassiveModeEnabled;
        boolean oldNmPassiveModeEnabledESet = this.nmPassiveModeEnabledESet;
        this.nmPassiveModeEnabled = NM_PASSIVE_MODE_ENABLED_EDEFAULT;
        this.nmPassiveModeEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldNmPassiveModeEnabled, (Object)NM_PASSIVE_MODE_ENABLED_EDEFAULT, oldNmPassiveModeEnabledESet));
        }
    }

    @Override
    public boolean isSetNmPassiveModeEnabled() {
        return this.nmPassiveModeEnabledESet;
    }

    @Override
    public EList<NmPdu> getRxNmPdus() {
        if (this.rxNmPdus == null) {
            this.rxNmPdus = new EObjectResolvingReferringEList(NmPdu.class, (InternalEObject)this, 23);
        }
        return this.rxNmPdus;
    }

    @Override
    public EList<NmPdu> getTxNmPdus() {
        if (this.txNmPdus == null) {
            this.txNmPdus = new EObjectResolvingReferringEList(NmPdu.class, (InternalEObject)this, 24);
        }
        return this.txNmPdus;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -26, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -26, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public IntegerDatatype getNmNodeIdData() {
        return this.nmNodeId.clone();
    }

    @Override
    public void setNmNodeIdData(IntegerDatatype newNmNodeId) {
        this.nmNodeId.setRadix((int)newNmNodeId.getRadix());
        this.nmNodeId.setNoOfDigits((int)newNmNodeId.getNoOfDigits());
        this.setNmNodeId(newNmNodeId.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetNmCluster((NmCluster)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetNmCluster(null, msgs);
            }
            case 25: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, NmCluster.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getNmCluster();
            }
            case 19: {
                if (resolve) {
                    return this.getController();
                }
                return this.basicGetController();
            }
            case 20: {
                if (resolve) {
                    return this.getNmIfEcu();
                }
                return this.basicGetNmIfEcu();
            }
            case 21: {
                return this.getNmNodeId();
            }
            case 22: {
                return this.getNmPassiveModeEnabled();
            }
            case 23: {
                return this.getRxNmPdus();
            }
            case 24: {
                return this.getTxNmPdus();
            }
            case 25: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setNmCluster((NmCluster)newValue);
                return;
            }
            case 19: {
                this.setController((CommunicationController)newValue);
                return;
            }
            case 20: {
                this.setNmIfEcu((NmEcu)newValue);
                return;
            }
            case 21: {
                this.setNmNodeId((Integer)newValue);
                return;
            }
            case 22: {
                this.setNmPassiveModeEnabled((Boolean)newValue);
                return;
            }
            case 23: {
                this.getRxNmPdus().clear();
                this.getRxNmPdus().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getTxNmPdus().clear();
                this.getTxNmPdus().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setNmCluster(null);
                return;
            }
            case 19: {
                this.setController(null);
                return;
            }
            case 20: {
                this.setNmIfEcu(null);
                return;
            }
            case 21: {
                this.unsetNmNodeId();
                return;
            }
            case 22: {
                this.unsetNmPassiveModeEnabled();
                return;
            }
            case 23: {
                this.getRxNmPdus().clear();
                return;
            }
            case 24: {
                this.getTxNmPdus().clear();
                return;
            }
            case 25: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getNmCluster() != null;
            }
            case 19: {
                return this.controller != null;
            }
            case 20: {
                return this.nmIfEcu != null;
            }
            case 21: {
                return this.isSetNmNodeId();
            }
            case 22: {
                return this.isSetNmPassiveModeEnabled();
            }
            case 23: {
                return this.rxNmPdus != null && !this.rxNmPdus.isEmpty();
            }
            case 24: {
                return this.txNmPdus != null && !this.txNmPdus.isEmpty();
            }
            case 25: {
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmNodeId: ");
        if (this.nmNodeIdESet) {
            result.append(this.nmNodeId);
        } else {
            result.append("<unset>");
        }
        result.append(", nmPassiveModeEnabled: ");
        if (this.nmPassiveModeEnabledESet) {
            result.append(this.nmPassiveModeEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

