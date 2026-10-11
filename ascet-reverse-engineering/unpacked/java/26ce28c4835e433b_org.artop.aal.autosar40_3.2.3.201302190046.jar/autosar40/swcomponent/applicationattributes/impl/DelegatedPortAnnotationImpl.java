/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.applicationattributes.impl;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.impl.GeneralAnnotationImpl;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.applicationattributes.DelegatedPortAnnotation;
import autosar40.swcomponent.applicationattributes.SignalFanEnum;
import autosar40.swcomponent.components.PortPrototype;
import java.util.Map;
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
public class DelegatedPortAnnotationImpl
extends GeneralAnnotationImpl
implements DelegatedPortAnnotation {
    protected static final SignalFanEnum SIGNAL_FAN_EDEFAULT = SignalFanEnum.NFOLD;
    protected SignalFanEnum signalFan = SIGNAL_FAN_EDEFAULT;
    protected boolean signalFanESet;

    protected DelegatedPortAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.DELEGATED_PORT_ANNOTATION;
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
    public SignalFanEnum getSignalFan() {
        return this.signalFan;
    }

    @Override
    public void setSignalFan(SignalFanEnum newSignalFan) {
        SignalFanEnum oldSignalFan = this.signalFan;
        this.signalFan = newSignalFan == null ? SIGNAL_FAN_EDEFAULT : newSignalFan;
        boolean oldSignalFanESet = this.signalFanESet;
        this.signalFanESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSignalFan, (Object)this.signalFan, !oldSignalFanESet));
        }
    }

    @Override
    public void unsetSignalFan() {
        SignalFanEnum oldSignalFan = this.signalFan;
        boolean oldSignalFanESet = this.signalFanESet;
        this.signalFan = SIGNAL_FAN_EDEFAULT;
        this.signalFanESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldSignalFan, (Object)SIGNAL_FAN_EDEFAULT, oldSignalFanESet));
        }
    }

    @Override
    public boolean isSetSignalFan() {
        return this.signalFanESet;
    }

    @Override
    public boolean aggregatingPortPrototypeisaportofaCompositionSwComponentTypeDelegatedPort(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

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
                return this.getSignalFan();
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
                this.setSignalFan((SignalFanEnum)((Object)newValue));
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
                this.unsetSignalFan();
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
                return this.isSetSignalFan();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (signalFan: ");
        if (this.signalFanESet) {
            result.append((Object)this.signalFan);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

