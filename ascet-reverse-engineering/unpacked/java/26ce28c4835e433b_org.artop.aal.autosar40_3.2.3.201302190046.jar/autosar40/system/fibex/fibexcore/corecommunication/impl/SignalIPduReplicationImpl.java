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
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduReplication;
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
public class SignalIPduReplicationImpl
extends ARObjectImpl
implements SignalIPduReplication,
IReferringClass {
    protected static final IntegerDatatype PDU_REPLICATION_VOTING_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype pduReplicationVoting = PDU_REPLICATION_VOTING_EDEFAULT.clone();
    protected boolean pduReplicationVotingESet;
    protected EList<ISignalIPdu> replicaPdus;
    protected VariationPoint variationPoint;

    protected SignalIPduReplicationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.SIGNAL_IPDU_REPLICATION;
    }

    @Override
    public ISignalIPdu getISignalIPdu() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ISignalIPdu)this.eContainer();
    }

    public NotificationChain basicSetISignalIPdu(ISignalIPdu newISignalIPdu, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newISignalIPdu, 4, msgs);
        return msgs;
    }

    @Override
    public void setISignalIPdu(ISignalIPdu newISignalIPdu) {
        if (newISignalIPdu != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newISignalIPdu != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newISignalIPdu)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newISignalIPdu != null) {
                msgs = ((InternalEObject)newISignalIPdu).eInverseAdd((InternalEObject)this, 25, ISignalIPdu.class, msgs);
            }
            if ((msgs = this.basicSetISignalIPdu(newISignalIPdu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newISignalIPdu, (Object)newISignalIPdu));
        }
    }

    @Override
    public Integer getPduReplicationVoting() {
        return (Integer)this.pduReplicationVoting.basicGetValue();
    }

    @Override
    public void setPduReplicationVoting(Integer newPduReplicationVoting) {
        Integer oldPduReplicationVoting = (Integer)this.pduReplicationVoting.basicGetValue();
        this.pduReplicationVoting.basicSetValue((Object)newPduReplicationVoting);
        boolean oldPduReplicationVotingESet = this.pduReplicationVotingESet;
        this.pduReplicationVotingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPduReplicationVoting, (Object)newPduReplicationVoting, !oldPduReplicationVotingESet));
        }
    }

    @Override
    public void unsetPduReplicationVoting() {
        Integer oldPduReplicationVoting = (Integer)this.pduReplicationVoting.basicGetValue();
        boolean oldPduReplicationVotingESet = this.pduReplicationVotingESet;
        this.pduReplicationVoting = PDU_REPLICATION_VOTING_EDEFAULT.clone();
        this.pduReplicationVotingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldPduReplicationVoting, (Object)PDU_REPLICATION_VOTING_EDEFAULT, oldPduReplicationVotingESet));
        }
    }

    @Override
    public boolean isSetPduReplicationVoting() {
        return this.pduReplicationVotingESet;
    }

    @Override
    public EList<ISignalIPdu> getReplicaPdus() {
        if (this.replicaPdus == null) {
            this.replicaPdus = new EObjectResolvingReferringEList(ISignalIPdu.class, (InternalEObject)this, 6);
        }
        return this.replicaPdus;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public IntegerDatatype getPduReplicationVotingData() {
        return this.pduReplicationVoting.clone();
    }

    @Override
    public void setPduReplicationVotingData(IntegerDatatype newPduReplicationVoting) {
        this.pduReplicationVoting.setRadix((int)newPduReplicationVoting.getRadix());
        this.pduReplicationVoting.setNoOfDigits((int)newPduReplicationVoting.getNoOfDigits());
        this.setPduReplicationVoting(newPduReplicationVoting.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetISignalIPdu((ISignalIPdu)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetISignalIPdu(null, msgs);
            }
            case 7: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, ISignalIPdu.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getISignalIPdu();
            }
            case 5: {
                return this.getPduReplicationVoting();
            }
            case 6: {
                return this.getReplicaPdus();
            }
            case 7: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setISignalIPdu((ISignalIPdu)newValue);
                return;
            }
            case 5: {
                this.setPduReplicationVoting((Integer)newValue);
                return;
            }
            case 6: {
                this.getReplicaPdus().clear();
                this.getReplicaPdus().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setISignalIPdu(null);
                return;
            }
            case 5: {
                this.unsetPduReplicationVoting();
                return;
            }
            case 6: {
                this.getReplicaPdus().clear();
                return;
            }
            case 7: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getISignalIPdu() != null;
            }
            case 5: {
                return this.isSetPduReplicationVoting();
            }
            case 6: {
                return this.replicaPdus != null && !this.replicaPdus.isEmpty();
            }
            case 7: {
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
        result.append(" (pduReplicationVoting: ");
        if (this.pduReplicationVotingESet) {
            result.append(this.pduReplicationVoting);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

