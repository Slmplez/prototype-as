/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
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
package autosar40.system.fibex.fibex4multiplatform.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.Gateway;
import autosar40.system.fibex.fibex4multiplatform.IPduMapping;
import autosar40.system.fibex.fibex4multiplatform.TargetIPduRef;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggering;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class IPduMappingImpl
extends ARObjectImpl
implements IPduMapping,
IReferringClass {
    protected DocumentationBlock introduction;
    protected static final PositiveIntegerDatatype PDUR_TP_CHUNK_SIZE_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pdurTpChunkSize = PDUR_TP_CHUNK_SIZE_EDEFAULT.clone();
    protected boolean pdurTpChunkSizeESet;
    protected PduTriggering sourceIPdu;
    protected TargetIPduRef targetIPdu;
    protected VariationPoint variationPoint;

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
                msgs = ((InternalEObject)newGateway).eInverseAdd((InternalEObject)this, 23, Gateway.class, msgs);
            }
            if ((msgs = this.basicSetGateway(newGateway, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newGateway, (Object)newGateway));
        }
    }

    public DocumentationBlock getIntroduction() {
        return this.introduction;
    }

    public NotificationChain basicSetIntroduction(DocumentationBlock newIntroduction, NotificationChain msgs) {
        DocumentationBlock oldIntroduction = this.introduction;
        this.introduction = newIntroduction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIntroduction, (Object)newIntroduction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setIntroduction(DocumentationBlock newIntroduction) {
        if (newIntroduction != this.introduction) {
            NotificationChain msgs = null;
            if (this.introduction != null) {
                msgs = ((InternalEObject)this.introduction).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newIntroduction != null) {
                msgs = ((InternalEObject)newIntroduction).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetIntroduction(newIntroduction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newIntroduction, (Object)newIntroduction));
        }
    }

    public Long getPdurTpChunkSize() {
        return (Long)this.pdurTpChunkSize.basicGetValue();
    }

    public void setPdurTpChunkSize(Long newPdurTpChunkSize) {
        Long oldPdurTpChunkSize = (Long)this.pdurTpChunkSize.basicGetValue();
        this.pdurTpChunkSize.basicSetValue((Object)newPdurTpChunkSize);
        boolean oldPdurTpChunkSizeESet = this.pdurTpChunkSizeESet;
        this.pdurTpChunkSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPdurTpChunkSize, (Object)newPdurTpChunkSize, !oldPdurTpChunkSizeESet));
        }
    }

    public void unsetPdurTpChunkSize() {
        Long oldPdurTpChunkSize = (Long)this.pdurTpChunkSize.basicGetValue();
        boolean oldPdurTpChunkSizeESet = this.pdurTpChunkSizeESet;
        this.pdurTpChunkSize = PDUR_TP_CHUNK_SIZE_EDEFAULT.clone();
        this.pdurTpChunkSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPdurTpChunkSize, (Object)PDUR_TP_CHUNK_SIZE_EDEFAULT, oldPdurTpChunkSizeESet));
        }
    }

    public boolean isSetPdurTpChunkSize() {
        return this.pdurTpChunkSizeESet;
    }

    public PduTriggering getSourceIPdu() {
        if (this.sourceIPdu != null && this.sourceIPdu.eIsProxy()) {
            InternalEObject oldSourceIPdu = (InternalEObject)this.sourceIPdu;
            this.sourceIPdu = (PduTriggering)this.eResolveProxy(oldSourceIPdu);
            if (this.sourceIPdu != oldSourceIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldSourceIPdu, (Object)this.sourceIPdu));
            }
        }
        return this.sourceIPdu;
    }

    public PduTriggering basicGetSourceIPdu() {
        return this.sourceIPdu;
    }

    public void setSourceIPdu(PduTriggering newSourceIPdu) {
        PduTriggering oldSourceIPdu = this.sourceIPdu;
        this.sourceIPdu = newSourceIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSourceIPdu, (Object)this.sourceIPdu));
        }
    }

    public TargetIPduRef getTargetIPdu() {
        return this.targetIPdu;
    }

    public NotificationChain basicSetTargetIPdu(TargetIPduRef newTargetIPdu, NotificationChain msgs) {
        TargetIPduRef oldTargetIPdu = this.targetIPdu;
        this.targetIPdu = newTargetIPdu;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTargetIPdu, (Object)newTargetIPdu);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newTargetIPdu, (Object)newTargetIPdu));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public PositiveIntegerDatatype getPdurTpChunkSizeData() {
        return this.pdurTpChunkSize.clone();
    }

    public void setPdurTpChunkSizeData(PositiveIntegerDatatype newPdurTpChunkSize) {
        this.pdurTpChunkSize.setRadix((int)newPdurTpChunkSize.getRadix());
        this.pdurTpChunkSize.setNoOfDigits((int)newPdurTpChunkSize.getNoOfDigits());
        this.setPdurTpChunkSize(newPdurTpChunkSize.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetGateway((Gateway)otherEnd, msgs);
            }
            case 8: {
                if (this.targetIPdu != null) {
                    msgs = ((InternalEObject)this.targetIPdu).eInverseRemove((InternalEObject)this, -9, null, msgs);
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
            case 5: {
                return this.basicSetIntroduction(null, msgs);
            }
            case 8: {
                return this.basicSetTargetIPdu(null, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, Gateway.class, msgs);
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
                return this.getIntroduction();
            }
            case 6: {
                return this.getPdurTpChunkSize();
            }
            case 7: {
                if (resolve) {
                    return this.getSourceIPdu();
                }
                return this.basicGetSourceIPdu();
            }
            case 8: {
                return this.getTargetIPdu();
            }
            case 9: {
                return this.getVariationPoint();
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
                this.setIntroduction((DocumentationBlock)newValue);
                return;
            }
            case 6: {
                this.setPdurTpChunkSize((Long)newValue);
                return;
            }
            case 7: {
                this.setSourceIPdu((PduTriggering)newValue);
                return;
            }
            case 8: {
                this.setTargetIPdu((TargetIPduRef)newValue);
                return;
            }
            case 9: {
                this.setVariationPoint((VariationPoint)newValue);
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
                this.setIntroduction(null);
                return;
            }
            case 6: {
                this.unsetPdurTpChunkSize();
                return;
            }
            case 7: {
                this.setSourceIPdu(null);
                return;
            }
            case 8: {
                this.setTargetIPdu(null);
                return;
            }
            case 9: {
                this.setVariationPoint(null);
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
                return this.introduction != null;
            }
            case 6: {
                return this.isSetPdurTpChunkSize();
            }
            case 7: {
                return this.sourceIPdu != null;
            }
            case 8: {
                return this.targetIPdu != null;
            }
            case 9: {
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

