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

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmCoordinator;
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
public class NmCoordinatorImpl
extends ARObjectImpl
implements NmCoordinator,
IReferringClass {
    protected static final IntegerDatatype INDEX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype index = INDEX_EDEFAULT.clone();
    protected boolean indexESet;
    protected static final Boolean NM_ACTIVE_COORDINATOR_EDEFAULT = Boolean.FALSE;
    protected Boolean nmActiveCoordinator = NM_ACTIVE_COORDINATOR_EDEFAULT;
    protected boolean nmActiveCoordinatorESet;
    protected static final Double NM_GLOBAL_COORDINATOR_TIME_EDEFAULT = new Double(0.0);
    protected Double nmGlobalCoordinatorTime = NM_GLOBAL_COORDINATOR_TIME_EDEFAULT;
    protected boolean nmGlobalCoordinatorTimeESet;
    protected EList<NmNode> nmNodes;
    protected static final Double NM_SHUTDOWN_DELAY_TIMER_EDEFAULT = new Double(0.0);
    protected Double nmShutdownDelayTimer = NM_SHUTDOWN_DELAY_TIMER_EDEFAULT;
    protected boolean nmShutdownDelayTimerESet;

    protected NmCoordinatorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.NM_COORDINATOR;
    }

    @Override
    public NmEcu getNmEcu() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (NmEcu)this.eContainer();
    }

    public NotificationChain basicSetNmEcu(NmEcu newNmEcu, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newNmEcu, 4, msgs);
        return msgs;
    }

    @Override
    public void setNmEcu(NmEcu newNmEcu) {
        if (newNmEcu != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newNmEcu != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newNmEcu)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newNmEcu != null) {
                msgs = ((InternalEObject)newNmEcu).eInverseAdd((InternalEObject)this, 23, NmEcu.class, msgs);
            }
            if ((msgs = this.basicSetNmEcu(newNmEcu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newNmEcu, (Object)newNmEcu));
        }
    }

    @Override
    public Integer getIndex() {
        return (Integer)this.index.basicGetValue();
    }

    @Override
    public void setIndex(Integer newIndex) {
        Integer oldIndex = (Integer)this.index.basicGetValue();
        this.index.basicSetValue((Object)newIndex);
        boolean oldIndexESet = this.indexESet;
        this.indexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIndex, (Object)newIndex, !oldIndexESet));
        }
    }

    @Override
    public void unsetIndex() {
        Integer oldIndex = (Integer)this.index.basicGetValue();
        boolean oldIndexESet = this.indexESet;
        this.index = INDEX_EDEFAULT.clone();
        this.indexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldIndex, (Object)INDEX_EDEFAULT, oldIndexESet));
        }
    }

    @Override
    public boolean isSetIndex() {
        return this.indexESet;
    }

    @Override
    public Boolean getNmActiveCoordinator() {
        return this.nmActiveCoordinator;
    }

    @Override
    public void setNmActiveCoordinator(Boolean newNmActiveCoordinator) {
        Boolean oldNmActiveCoordinator = this.nmActiveCoordinator;
        this.nmActiveCoordinator = newNmActiveCoordinator;
        boolean oldNmActiveCoordinatorESet = this.nmActiveCoordinatorESet;
        this.nmActiveCoordinatorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldNmActiveCoordinator, (Object)this.nmActiveCoordinator, !oldNmActiveCoordinatorESet));
        }
    }

    @Override
    public void unsetNmActiveCoordinator() {
        Boolean oldNmActiveCoordinator = this.nmActiveCoordinator;
        boolean oldNmActiveCoordinatorESet = this.nmActiveCoordinatorESet;
        this.nmActiveCoordinator = NM_ACTIVE_COORDINATOR_EDEFAULT;
        this.nmActiveCoordinatorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldNmActiveCoordinator, (Object)NM_ACTIVE_COORDINATOR_EDEFAULT, oldNmActiveCoordinatorESet));
        }
    }

    @Override
    public boolean isSetNmActiveCoordinator() {
        return this.nmActiveCoordinatorESet;
    }

    @Override
    public Double getNmGlobalCoordinatorTime() {
        return this.nmGlobalCoordinatorTime;
    }

    @Override
    public void setNmGlobalCoordinatorTime(Double newNmGlobalCoordinatorTime) {
        Double oldNmGlobalCoordinatorTime = this.nmGlobalCoordinatorTime;
        this.nmGlobalCoordinatorTime = newNmGlobalCoordinatorTime;
        boolean oldNmGlobalCoordinatorTimeESet = this.nmGlobalCoordinatorTimeESet;
        this.nmGlobalCoordinatorTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldNmGlobalCoordinatorTime, (Object)this.nmGlobalCoordinatorTime, !oldNmGlobalCoordinatorTimeESet));
        }
    }

    @Override
    public void unsetNmGlobalCoordinatorTime() {
        Double oldNmGlobalCoordinatorTime = this.nmGlobalCoordinatorTime;
        boolean oldNmGlobalCoordinatorTimeESet = this.nmGlobalCoordinatorTimeESet;
        this.nmGlobalCoordinatorTime = NM_GLOBAL_COORDINATOR_TIME_EDEFAULT;
        this.nmGlobalCoordinatorTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldNmGlobalCoordinatorTime, (Object)NM_GLOBAL_COORDINATOR_TIME_EDEFAULT, oldNmGlobalCoordinatorTimeESet));
        }
    }

    @Override
    public boolean isSetNmGlobalCoordinatorTime() {
        return this.nmGlobalCoordinatorTimeESet;
    }

    @Override
    public EList<NmNode> getNmNodes() {
        if (this.nmNodes == null) {
            this.nmNodes = new EObjectResolvingReferringEList(NmNode.class, (InternalEObject)this, 8);
        }
        return this.nmNodes;
    }

    @Override
    public Double getNmShutdownDelayTimer() {
        return this.nmShutdownDelayTimer;
    }

    @Override
    public void setNmShutdownDelayTimer(Double newNmShutdownDelayTimer) {
        Double oldNmShutdownDelayTimer = this.nmShutdownDelayTimer;
        this.nmShutdownDelayTimer = newNmShutdownDelayTimer;
        boolean oldNmShutdownDelayTimerESet = this.nmShutdownDelayTimerESet;
        this.nmShutdownDelayTimerESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldNmShutdownDelayTimer, (Object)this.nmShutdownDelayTimer, !oldNmShutdownDelayTimerESet));
        }
    }

    @Override
    public void unsetNmShutdownDelayTimer() {
        Double oldNmShutdownDelayTimer = this.nmShutdownDelayTimer;
        boolean oldNmShutdownDelayTimerESet = this.nmShutdownDelayTimerESet;
        this.nmShutdownDelayTimer = NM_SHUTDOWN_DELAY_TIMER_EDEFAULT;
        this.nmShutdownDelayTimerESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldNmShutdownDelayTimer, (Object)NM_SHUTDOWN_DELAY_TIMER_EDEFAULT, oldNmShutdownDelayTimerESet));
        }
    }

    @Override
    public boolean isSetNmShutdownDelayTimer() {
        return this.nmShutdownDelayTimerESet;
    }

    @Override
    public IntegerDatatype getIndexData() {
        return this.index.clone();
    }

    @Override
    public void setIndexData(IntegerDatatype newIndex) {
        this.index.setRadix((int)newIndex.getRadix());
        this.index.setNoOfDigits((int)newIndex.getNoOfDigits());
        this.setIndex(newIndex.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetNmEcu((NmEcu)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetNmEcu(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, NmEcu.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getNmEcu();
            }
            case 5: {
                return this.getIndex();
            }
            case 6: {
                return this.getNmActiveCoordinator();
            }
            case 7: {
                return this.getNmGlobalCoordinatorTime();
            }
            case 8: {
                return this.getNmNodes();
            }
            case 9: {
                return this.getNmShutdownDelayTimer();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setNmEcu((NmEcu)newValue);
                return;
            }
            case 5: {
                this.setIndex((Integer)newValue);
                return;
            }
            case 6: {
                this.setNmActiveCoordinator((Boolean)newValue);
                return;
            }
            case 7: {
                this.setNmGlobalCoordinatorTime((Double)newValue);
                return;
            }
            case 8: {
                this.getNmNodes().clear();
                this.getNmNodes().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.setNmShutdownDelayTimer((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setNmEcu(null);
                return;
            }
            case 5: {
                this.unsetIndex();
                return;
            }
            case 6: {
                this.unsetNmActiveCoordinator();
                return;
            }
            case 7: {
                this.unsetNmGlobalCoordinatorTime();
                return;
            }
            case 8: {
                this.getNmNodes().clear();
                return;
            }
            case 9: {
                this.unsetNmShutdownDelayTimer();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getNmEcu() != null;
            }
            case 5: {
                return this.isSetIndex();
            }
            case 6: {
                return this.isSetNmActiveCoordinator();
            }
            case 7: {
                return this.isSetNmGlobalCoordinatorTime();
            }
            case 8: {
                return this.nmNodes != null && !this.nmNodes.isEmpty();
            }
            case 9: {
                return this.isSetNmShutdownDelayTimer();
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
        result.append(" (index: ");
        if (this.indexESet) {
            result.append(this.index);
        } else {
            result.append("<unset>");
        }
        result.append(", nmActiveCoordinator: ");
        if (this.nmActiveCoordinatorESet) {
            result.append(this.nmActiveCoordinator);
        } else {
            result.append("<unset>");
        }
        result.append(", nmGlobalCoordinatorTime: ");
        if (this.nmGlobalCoordinatorTimeESet) {
            result.append(this.nmGlobalCoordinatorTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmShutdownDelayTimer: ");
        if (this.nmShutdownDelayTimerESet) {
            result.append(this.nmShutdownDelayTimer);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

