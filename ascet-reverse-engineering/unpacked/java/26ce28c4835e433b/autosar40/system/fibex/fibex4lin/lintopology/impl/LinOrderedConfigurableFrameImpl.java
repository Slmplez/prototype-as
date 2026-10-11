/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
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
import autosar40.system.fibex.fibex4lin.lintopology.LinOrderedConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LinOrderedConfigurableFrameImpl
extends ARObjectImpl
implements LinOrderedConfigurableFrame,
IReferringClass {
    protected LinFrame frame;
    protected static final IntegerDatatype INDEX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype index = INDEX_EDEFAULT.clone();
    protected boolean indexESet;

    protected LinOrderedConfigurableFrameImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_ORDERED_CONFIGURABLE_FRAME;
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
                msgs = ((InternalEObject)newLinCommunicationConnector).eInverseAdd((InternalEObject)this, 24, LinCommunicationConnector.class, msgs);
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

    public Integer getIndex() {
        return (Integer)this.index.basicGetValue();
    }

    public void setIndex(Integer newIndex) {
        Integer oldIndex = (Integer)this.index.basicGetValue();
        this.index.basicSetValue((Object)newIndex);
        boolean oldIndexESet = this.indexESet;
        this.indexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIndex, (Object)newIndex, !oldIndexESet));
        }
    }

    public void unsetIndex() {
        Integer oldIndex = (Integer)this.index.basicGetValue();
        boolean oldIndexESet = this.indexESet;
        this.index = INDEX_EDEFAULT.clone();
        this.indexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldIndex, (Object)INDEX_EDEFAULT, oldIndexESet));
        }
    }

    public boolean isSetIndex() {
        return this.indexESet;
    }

    public IntegerDatatype getIndexData() {
        return this.index.clone();
    }

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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, LinCommunicationConnector.class, msgs);
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
                return this.getIndex();
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
                this.setIndex((Integer)newValue);
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
                this.unsetIndex();
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
                return this.isSetIndex();
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
        result.append(')');
        return result.toString();
    }
}

