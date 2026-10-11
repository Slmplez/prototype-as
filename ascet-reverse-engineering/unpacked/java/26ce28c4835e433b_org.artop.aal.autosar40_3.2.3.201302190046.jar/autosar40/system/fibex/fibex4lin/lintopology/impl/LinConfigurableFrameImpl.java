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
package autosar40.system.fibex.fibex4lin.lintopology.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationConnector;
import autosar40.system.fibex.fibex4lin.lintopology.LinConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
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

public class LinConfigurableFrameImpl
extends ARObjectImpl
implements LinConfigurableFrame,
IReferringClass {
    protected LinFrame frame;
    protected static final PositiveIntegerDatatype MESSAGE_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype messageId = MESSAGE_ID_EDEFAULT.clone();
    protected boolean messageIdESet;

    protected LinConfigurableFrameImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_CONFIGURABLE_FRAME;
    }

    public LinCommunicationConnector getLinCommunicationConnector() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (LinCommunicationConnector)this.eContainer();
    }

    public NotificationChain basicSetLinCommunicationConnector(LinCommunicationConnector newLinCommunicationConnector, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinCommunicationConnector, 4, msgs);
        return msgs;
    }

    public void setLinCommunicationConnector(LinCommunicationConnector newLinCommunicationConnector) {
        if (newLinCommunicationConnector != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newLinCommunicationConnector != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinCommunicationConnector)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinCommunicationConnector != null) {
                msgs = ((InternalEObject)newLinCommunicationConnector).eInverseAdd((InternalEObject)this, 23, LinCommunicationConnector.class, msgs);
            }
            if ((msgs = this.basicSetLinCommunicationConnector(newLinCommunicationConnector, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLinCommunicationConnector, (Object)newLinCommunicationConnector));
        }
    }

    public LinFrame getFrame() {
        if (this.frame != null && this.frame.eIsProxy()) {
            InternalEObject oldFrame = (InternalEObject)this.frame;
            this.frame = (LinFrame)this.eResolveProxy(oldFrame);
            if (this.frame != oldFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldFrame, (Object)this.frame));
            }
        }
        return this.frame;
    }

    public LinFrame basicGetFrame() {
        return this.frame;
    }

    public void setFrame(LinFrame newFrame) {
        LinFrame oldFrame = this.frame;
        this.frame = newFrame;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldFrame, (Object)this.frame));
        }
    }

    public Long getMessageId() {
        return (Long)this.messageId.basicGetValue();
    }

    public void setMessageId(Long newMessageId) {
        Long oldMessageId = (Long)this.messageId.basicGetValue();
        this.messageId.basicSetValue((Object)newMessageId);
        boolean oldMessageIdESet = this.messageIdESet;
        this.messageIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMessageId, (Object)newMessageId, !oldMessageIdESet));
        }
    }

    public void unsetMessageId() {
        Long oldMessageId = (Long)this.messageId.basicGetValue();
        boolean oldMessageIdESet = this.messageIdESet;
        this.messageId = MESSAGE_ID_EDEFAULT.clone();
        this.messageIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMessageId, (Object)MESSAGE_ID_EDEFAULT, oldMessageIdESet));
        }
    }

    public boolean isSetMessageId() {
        return this.messageIdESet;
    }

    public PositiveIntegerDatatype getMessageIdData() {
        return this.messageId.clone();
    }

    public void setMessageIdData(PositiveIntegerDatatype newMessageId) {
        this.messageId.setRadix((int)newMessageId.getRadix());
        this.messageId.setNoOfDigits((int)newMessageId.getNoOfDigits());
        this.setMessageId(newMessageId.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinCommunicationConnector((LinCommunicationConnector)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLinCommunicationConnector(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, LinCommunicationConnector.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLinCommunicationConnector();
            }
            case 5: {
                if (resolve) {
                    return this.getFrame();
                }
                return this.basicGetFrame();
            }
            case 6: {
                return this.getMessageId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLinCommunicationConnector((LinCommunicationConnector)newValue);
                return;
            }
            case 5: {
                this.setFrame((LinFrame)newValue);
                return;
            }
            case 6: {
                this.setMessageId((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setLinCommunicationConnector(null);
                return;
            }
            case 5: {
                this.setFrame(null);
                return;
            }
            case 6: {
                this.unsetMessageId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getLinCommunicationConnector() != null;
            }
            case 5: {
                return this.frame != null;
            }
            case 6: {
                return this.isSetMessageId();
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
        result.append(" (messageId: ");
        if (this.messageIdESet) {
            result.append(this.messageId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

