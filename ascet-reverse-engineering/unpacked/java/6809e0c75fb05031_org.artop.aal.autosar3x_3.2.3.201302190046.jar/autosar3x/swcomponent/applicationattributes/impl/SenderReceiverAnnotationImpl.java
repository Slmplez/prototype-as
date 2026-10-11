/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.applicationattributes.impl;

import autosar3x.genericstructure.commonpatterns.annotation.impl.GeneralAnnotationImpl;
import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.LimitKind;
import autosar3x.swcomponent.applicationattributes.ProcessingKind;
import autosar3x.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class SenderReceiverAnnotationImpl
extends GeneralAnnotationImpl
implements SenderReceiverAnnotation,
IReferringClass {
    protected static final Boolean COMPUTED_EDEFAULT = Boolean.FALSE;
    protected Boolean computed = COMPUTED_EDEFAULT;
    protected boolean computedESet;
    protected DataElementPrototype dataElement;
    protected static final LimitKind LIMIT_KIND_EDEFAULT = LimitKind.NONE;
    protected LimitKind limitKind = LIMIT_KIND_EDEFAULT;
    protected boolean limitKindESet;
    protected static final ProcessingKind PROCESSING_KIND_EDEFAULT = ProcessingKind.NONE;
    protected ProcessingKind processingKind = PROCESSING_KIND_EDEFAULT;
    protected boolean processingKindESet;

    protected SenderReceiverAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.SENDER_RECEIVER_ANNOTATION;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.eContainerFeatureID() != 9) {
            return null;
        }
        return (PortPrototype)this.eContainer();
    }

    public NotificationChain basicSetPortPrototype(PortPrototype newPortPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPortPrototype, 9, msgs);
        return msgs;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        if (newPortPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 9 && newPortPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPortPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPortPrototype != null) {
                msgs = ((InternalEObject)newPortPrototype).eInverseAdd((InternalEObject)this, 21, PortPrototype.class, msgs);
            }
            if ((msgs = this.basicSetPortPrototype(newPortPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newPortPrototype, (Object)newPortPrototype));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldComputed, (Object)this.computed, !oldComputedESet));
        }
    }

    @Override
    public void unsetComputed() {
        Boolean oldComputed = this.computed;
        boolean oldComputedESet = this.computedESet;
        this.computed = COMPUTED_EDEFAULT;
        this.computedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldComputed, (Object)COMPUTED_EDEFAULT, oldComputedESet));
        }
    }

    @Override
    public boolean isSetComputed() {
        return this.computedESet;
    }

    @Override
    public DataElementPrototype getDataElement() {
        if (this.dataElement != null && this.dataElement.eIsProxy()) {
            InternalEObject oldDataElement = (InternalEObject)this.dataElement;
            this.dataElement = (DataElementPrototype)this.eResolveProxy(oldDataElement);
            if (this.dataElement != oldDataElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 11, (Object)oldDataElement, (Object)this.dataElement));
            }
        }
        return this.dataElement;
    }

    public DataElementPrototype basicGetDataElement() {
        return this.dataElement;
    }

    @Override
    public void setDataElement(DataElementPrototype newDataElement) {
        DataElementPrototype oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        AutosarObjectUtil.setDest((EObject)this, (int)11, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldDataElement, (Object)this.dataElement));
        }
    }

    @Override
    public LimitKind getLimitKind() {
        return this.limitKind;
    }

    @Override
    public void setLimitKind(LimitKind newLimitKind) {
        LimitKind oldLimitKind = this.limitKind;
        this.limitKind = newLimitKind == null ? LIMIT_KIND_EDEFAULT : newLimitKind;
        boolean oldLimitKindESet = this.limitKindESet;
        this.limitKindESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldLimitKind, (Object)this.limitKind, !oldLimitKindESet));
        }
    }

    @Override
    public void unsetLimitKind() {
        LimitKind oldLimitKind = this.limitKind;
        boolean oldLimitKindESet = this.limitKindESet;
        this.limitKind = LIMIT_KIND_EDEFAULT;
        this.limitKindESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldLimitKind, (Object)LIMIT_KIND_EDEFAULT, oldLimitKindESet));
        }
    }

    @Override
    public boolean isSetLimitKind() {
        return this.limitKindESet;
    }

    @Override
    public ProcessingKind getProcessingKind() {
        return this.processingKind;
    }

    @Override
    public void setProcessingKind(ProcessingKind newProcessingKind) {
        ProcessingKind oldProcessingKind = this.processingKind;
        this.processingKind = newProcessingKind == null ? PROCESSING_KIND_EDEFAULT : newProcessingKind;
        boolean oldProcessingKindESet = this.processingKindESet;
        this.processingKindESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldProcessingKind, (Object)this.processingKind, !oldProcessingKindESet));
        }
    }

    @Override
    public void unsetProcessingKind() {
        ProcessingKind oldProcessingKind = this.processingKind;
        boolean oldProcessingKindESet = this.processingKindESet;
        this.processingKind = PROCESSING_KIND_EDEFAULT;
        this.processingKindESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldProcessingKind, (Object)PROCESSING_KIND_EDEFAULT, oldProcessingKindESet));
        }
    }

    @Override
    public boolean isSetProcessingKind() {
        return this.processingKindESet;
    }

    @Override
    public boolean _portsinterfaceisaSenderReceiverInterface(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPortPrototype((PortPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return this.basicSetPortPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 9: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, PortPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getPortPrototype();
            }
            case 10: {
                return this.getComputed();
            }
            case 11: {
                if (resolve) {
                    return this.getDataElement();
                }
                return this.basicGetDataElement();
            }
            case 12: {
                return this.getLimitKind();
            }
            case 13: {
                return this.getProcessingKind();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 10: {
                this.setComputed((Boolean)newValue);
                return;
            }
            case 11: {
                this.setDataElement((DataElementPrototype)newValue);
                return;
            }
            case 12: {
                this.setLimitKind((LimitKind)((Object)newValue));
                return;
            }
            case 13: {
                this.setProcessingKind((ProcessingKind)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setPortPrototype(null);
                return;
            }
            case 10: {
                this.unsetComputed();
                return;
            }
            case 11: {
                this.setDataElement(null);
                return;
            }
            case 12: {
                this.unsetLimitKind();
                return;
            }
            case 13: {
                this.unsetProcessingKind();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.getPortPrototype() != null;
            }
            case 10: {
                return this.isSetComputed();
            }
            case 11: {
                return this.dataElement != null;
            }
            case 12: {
                return this.isSetLimitKind();
            }
            case 13: {
                return this.isSetProcessingKind();
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
        result.append(" (computed: ");
        if (this.computedESet) {
            result.append(this.computed);
        } else {
            result.append("<unset>");
        }
        result.append(", limitKind: ");
        if (this.limitKindESet) {
            result.append((Object)this.limitKind);
        } else {
            result.append("<unset>");
        }
        result.append(", processingKind: ");
        if (this.processingKindESet) {
            result.append((Object)this.processingKind);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

