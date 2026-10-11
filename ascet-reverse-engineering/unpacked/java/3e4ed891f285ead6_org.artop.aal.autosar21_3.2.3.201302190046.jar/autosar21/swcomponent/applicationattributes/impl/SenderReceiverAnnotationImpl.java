/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationLimitTypeEnum;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationProcessingTypeEnum;
import autosar21.swcomponent.applicationattributes.impl.PortAnnotationImpl;
import autosar21.swcomponent.applicationattributes.instanceref.SenderReceiverAnnotationDataElement;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class SenderReceiverAnnotationImpl
extends PortAnnotationImpl
implements SenderReceiverAnnotation {
    protected static final Boolean COMPUTED_EDEFAULT = Boolean.FALSE;
    protected Boolean computed = COMPUTED_EDEFAULT;
    protected boolean computedESet;
    protected static final SenderReceiverAnnotationLimitTypeEnum LIMIT_TYPE_EDEFAULT = SenderReceiverAnnotationLimitTypeEnum.NONE;
    protected SenderReceiverAnnotationLimitTypeEnum limitType = LIMIT_TYPE_EDEFAULT;
    protected boolean limitTypeESet;
    protected static final SenderReceiverAnnotationProcessingTypeEnum PROCESSING_TYPE_EDEFAULT = SenderReceiverAnnotationProcessingTypeEnum.NONE;
    protected SenderReceiverAnnotationProcessingTypeEnum processingType = PROCESSING_TYPE_EDEFAULT;
    protected boolean processingTypeESet;
    protected SenderReceiverAnnotationDataElement senderReceiverAnnotation_dataElement;

    protected SenderReceiverAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.SENDER_RECEIVER_ANNOTATION;
    }

    @Override
    public Boolean getComputed() {
        return this.computed;
    }

    @Override
    public void setComputed(Boolean newComputed) {
        Boolean oldComputed = this.computed;
        this.computed = newComputed;
        boolean oldComputedESet = this.computedESet;
        this.computedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldComputed, (Object)this.computed, !oldComputedESet));
        }
    }

    @Override
    public void unsetComputed() {
        Boolean oldComputed = this.computed;
        boolean oldComputedESet = this.computedESet;
        this.computed = COMPUTED_EDEFAULT;
        this.computedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldComputed, (Object)COMPUTED_EDEFAULT, oldComputedESet));
        }
    }

    @Override
    public boolean isSetComputed() {
        return this.computedESet;
    }

    @Override
    public SenderReceiverAnnotationLimitTypeEnum getLimitType() {
        return this.limitType;
    }

    @Override
    public void setLimitType(SenderReceiverAnnotationLimitTypeEnum newLimitType) {
        SenderReceiverAnnotationLimitTypeEnum oldLimitType = this.limitType;
        this.limitType = newLimitType == null ? LIMIT_TYPE_EDEFAULT : newLimitType;
        boolean oldLimitTypeESet = this.limitTypeESet;
        this.limitTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldLimitType, (Object)this.limitType, !oldLimitTypeESet));
        }
    }

    @Override
    public void unsetLimitType() {
        SenderReceiverAnnotationLimitTypeEnum oldLimitType = this.limitType;
        boolean oldLimitTypeESet = this.limitTypeESet;
        this.limitType = LIMIT_TYPE_EDEFAULT;
        this.limitTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldLimitType, (Object)LIMIT_TYPE_EDEFAULT, oldLimitTypeESet));
        }
    }

    @Override
    public boolean isSetLimitType() {
        return this.limitTypeESet;
    }

    @Override
    public SenderReceiverAnnotationProcessingTypeEnum getProcessingType() {
        return this.processingType;
    }

    @Override
    public void setProcessingType(SenderReceiverAnnotationProcessingTypeEnum newProcessingType) {
        SenderReceiverAnnotationProcessingTypeEnum oldProcessingType = this.processingType;
        this.processingType = newProcessingType == null ? PROCESSING_TYPE_EDEFAULT : newProcessingType;
        boolean oldProcessingTypeESet = this.processingTypeESet;
        this.processingTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldProcessingType, (Object)this.processingType, !oldProcessingTypeESet));
        }
    }

    @Override
    public void unsetProcessingType() {
        SenderReceiverAnnotationProcessingTypeEnum oldProcessingType = this.processingType;
        boolean oldProcessingTypeESet = this.processingTypeESet;
        this.processingType = PROCESSING_TYPE_EDEFAULT;
        this.processingTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldProcessingType, (Object)PROCESSING_TYPE_EDEFAULT, oldProcessingTypeESet));
        }
    }

    @Override
    public boolean isSetProcessingType() {
        return this.processingTypeESet;
    }

    @Override
    public SenderReceiverAnnotationDataElement getSenderReceiverAnnotation_dataElement() {
        return this.senderReceiverAnnotation_dataElement;
    }

    public NotificationChain basicSetSenderReceiverAnnotation_dataElement(SenderReceiverAnnotationDataElement newSenderReceiverAnnotation_dataElement, NotificationChain msgs) {
        SenderReceiverAnnotationDataElement oldSenderReceiverAnnotation_dataElement = this.senderReceiverAnnotation_dataElement;
        this.senderReceiverAnnotation_dataElement = newSenderReceiverAnnotation_dataElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSenderReceiverAnnotation_dataElement, (Object)newSenderReceiverAnnotation_dataElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSenderReceiverAnnotation_dataElement(SenderReceiverAnnotationDataElement newSenderReceiverAnnotation_dataElement) {
        if (newSenderReceiverAnnotation_dataElement != this.senderReceiverAnnotation_dataElement) {
            NotificationChain msgs = null;
            if (this.senderReceiverAnnotation_dataElement != null) {
                msgs = ((InternalEObject)this.senderReceiverAnnotation_dataElement).eInverseRemove((InternalEObject)this, 4, SenderReceiverAnnotationDataElement.class, msgs);
            }
            if (newSenderReceiverAnnotation_dataElement != null) {
                msgs = ((InternalEObject)newSenderReceiverAnnotation_dataElement).eInverseAdd((InternalEObject)this, 4, SenderReceiverAnnotationDataElement.class, msgs);
            }
            if ((msgs = this.basicSetSenderReceiverAnnotation_dataElement(newSenderReceiverAnnotation_dataElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSenderReceiverAnnotation_dataElement, (Object)newSenderReceiverAnnotation_dataElement));
        }
    }

    @Override
    public boolean _portsinterfaceisaSenderReceiverInterface(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                if (this.senderReceiverAnnotation_dataElement != null) {
                    msgs = ((InternalEObject)this.senderReceiverAnnotation_dataElement).eInverseRemove((InternalEObject)this, -10, null, msgs);
                }
                return this.basicSetSenderReceiverAnnotation_dataElement((SenderReceiverAnnotationDataElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return this.basicSetSenderReceiverAnnotation_dataElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getComputed();
            }
            case 7: {
                return this.getLimitType();
            }
            case 8: {
                return this.getProcessingType();
            }
            case 9: {
                return this.getSenderReceiverAnnotation_dataElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setComputed((Boolean)newValue);
                return;
            }
            case 7: {
                this.setLimitType((SenderReceiverAnnotationLimitTypeEnum)((Object)newValue));
                return;
            }
            case 8: {
                this.setProcessingType((SenderReceiverAnnotationProcessingTypeEnum)((Object)newValue));
                return;
            }
            case 9: {
                this.setSenderReceiverAnnotation_dataElement((SenderReceiverAnnotationDataElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetComputed();
                return;
            }
            case 7: {
                this.unsetLimitType();
                return;
            }
            case 8: {
                this.unsetProcessingType();
                return;
            }
            case 9: {
                this.setSenderReceiverAnnotation_dataElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetComputed();
            }
            case 7: {
                return this.isSetLimitType();
            }
            case 8: {
                return this.isSetProcessingType();
            }
            case 9: {
                return this.senderReceiverAnnotation_dataElement != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (computed: ");
        if (this.computedESet) {
            result.append(this.computed);
        } else {
            result.append("<unset>");
        }
        result.append(", limitType: ");
        if (this.limitTypeESet) {
            result.append((Object)this.limitType);
        } else {
            result.append("<unset>");
        }
        result.append(", processingType: ");
        if (this.processingTypeESet) {
            result.append((Object)this.processingType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

