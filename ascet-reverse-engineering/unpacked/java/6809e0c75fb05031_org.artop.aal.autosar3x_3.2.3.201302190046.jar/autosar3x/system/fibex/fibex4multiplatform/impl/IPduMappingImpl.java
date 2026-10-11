/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibex4multiplatform.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibex4multiplatform.Gateway;
import autosar3x.system.fibex.fibex4multiplatform.IPduMapping;
import autosar3x.system.fibex.fibex4multiplatform.SourceIPduRef;
import autosar3x.system.fibex.fibex4multiplatform.TargetIPduRef;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class IPduMappingImpl
extends ARObjectImpl
implements IPduMapping {
    protected static final Integer PDUR_TP_CHUNK_SIZE_EDEFAULT = new Integer(0);
    protected Integer pdurTpChunkSize = PDUR_TP_CHUNK_SIZE_EDEFAULT;
    protected boolean pdurTpChunkSizeESet;
    protected SourceIPduRef sourceIPdu;
    protected TargetIPduRef targetIPdu;

    protected IPduMappingImpl() {
    }

    protected EClass eStaticClass() {
        return Fibex4multiplatformPackage.Literals.IPDU_MAPPING;
    }

    public Gateway getGateway() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Gateway)this.eContainer();
    }

    public NotificationChain basicSetGateway(Gateway newGateway, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newGateway, 4, msgs);
        return msgs;
    }

    public void setGateway(Gateway newGateway) {
        if (newGateway != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newGateway != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newGateway)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newGateway != null) {
                msgs = ((InternalEObject)newGateway).eInverseAdd((InternalEObject)this, 21, Gateway.class, msgs);
            }
            if ((msgs = this.basicSetGateway(newGateway, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newGateway, (Object)newGateway));
        }
    }

    public Integer getPdurTpChunkSize() {
        return this.pdurTpChunkSize;
    }

    public void setPdurTpChunkSize(Integer newPdurTpChunkSize) {
        Integer oldPdurTpChunkSize = this.pdurTpChunkSize;
        this.pdurTpChunkSize = newPdurTpChunkSize;
        boolean oldPdurTpChunkSizeESet = this.pdurTpChunkSizeESet;
        this.pdurTpChunkSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPdurTpChunkSize, (Object)this.pdurTpChunkSize, !oldPdurTpChunkSizeESet));
        }
    }

    public void unsetPdurTpChunkSize() {
        Integer oldPdurTpChunkSize = this.pdurTpChunkSize;
        boolean oldPdurTpChunkSizeESet = this.pdurTpChunkSizeESet;
        this.pdurTpChunkSize = PDUR_TP_CHUNK_SIZE_EDEFAULT;
        this.pdurTpChunkSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldPdurTpChunkSize, (Object)PDUR_TP_CHUNK_SIZE_EDEFAULT, oldPdurTpChunkSizeESet));
        }
    }

    public boolean isSetPdurTpChunkSize() {
        return this.pdurTpChunkSizeESet;
    }

    public SourceIPduRef getSourceIPdu() {
        return this.sourceIPdu;
    }

    public NotificationChain basicSetSourceIPdu(SourceIPduRef newSourceIPdu, NotificationChain msgs) {
        SourceIPduRef oldSourceIPdu = this.sourceIPdu;
        this.sourceIPdu = newSourceIPdu;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSourceIPdu, (Object)newSourceIPdu);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSourceIPdu(SourceIPduRef newSourceIPdu) {
        if (newSourceIPdu != this.sourceIPdu) {
            NotificationChain msgs = null;
            if (this.sourceIPdu != null) {
                msgs = ((InternalEObject)this.sourceIPdu).eInverseRemove((InternalEObject)this, 4, SourceIPduRef.class, msgs);
            }
            if (newSourceIPdu != null) {
                msgs = ((InternalEObject)newSourceIPdu).eInverseAdd((InternalEObject)this, 4, SourceIPduRef.class, msgs);
            }
            if ((msgs = this.basicSetSourceIPdu(newSourceIPdu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSourceIPdu, (Object)newSourceIPdu));
        }
    }

    public TargetIPduRef getTargetIPdu() {
        return this.targetIPdu;
    }

    public NotificationChain basicSetTargetIPdu(TargetIPduRef newTargetIPdu, NotificationChain msgs) {
        TargetIPduRef oldTargetIPdu = this.targetIPdu;
        this.targetIPdu = newTargetIPdu;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTargetIPdu, (Object)newTargetIPdu);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTargetIPdu(TargetIPduRef newTargetIPdu) {
        if (newTargetIPdu != this.targetIPdu) {
            NotificationChain msgs = null;
            if (this.targetIPdu != null) {
                msgs = ((InternalEObject)this.targetIPdu).eInverseRemove((InternalEObject)this, 4, TargetIPduRef.class, msgs);
            }
            if (newTargetIPdu != null) {
                msgs = ((InternalEObject)newTargetIPdu).eInverseAdd((InternalEObject)this, 4, TargetIPduRef.class, msgs);
            }
            if ((msgs = this.basicSetTargetIPdu(newTargetIPdu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newTargetIPdu, (Object)newTargetIPdu));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetGateway((Gateway)otherEnd, msgs);
            }
            case 6: {
                if (this.sourceIPdu != null) {
                    msgs = ((InternalEObject)this.sourceIPdu).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetSourceIPdu((SourceIPduRef)otherEnd, msgs);
            }
            case 7: {
                if (this.targetIPdu != null) {
                    msgs = ((InternalEObject)this.targetIPdu).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetTargetIPdu((TargetIPduRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetGateway(null, msgs);
            }
            case 6: {
                return this.basicSetSourceIPdu(null, msgs);
            }
            case 7: {
                return this.basicSetTargetIPdu(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, Gateway.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getGateway();
            }
            case 5: {
                return this.getPdurTpChunkSize();
            }
            case 6: {
                return this.getSourceIPdu();
            }
            case 7: {
                return this.getTargetIPdu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setGateway((Gateway)newValue);
                return;
            }
            case 5: {
                this.setPdurTpChunkSize((Integer)newValue);
                return;
            }
            case 6: {
                this.setSourceIPdu((SourceIPduRef)newValue);
                return;
            }
            case 7: {
                this.setTargetIPdu((TargetIPduRef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setGateway(null);
                return;
            }
            case 5: {
                this.unsetPdurTpChunkSize();
                return;
            }
            case 6: {
                this.setSourceIPdu(null);
                return;
            }
            case 7: {
                this.setTargetIPdu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getGateway() != null;
            }
            case 5: {
                return this.isSetPdurTpChunkSize();
            }
            case 6: {
                return this.sourceIPdu != null;
            }
            case 7: {
                return this.targetIPdu != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (pdurTpChunkSize: ");
        if (this.pdurTpChunkSizeESet) {
            result.append(this.pdurTpChunkSize);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

