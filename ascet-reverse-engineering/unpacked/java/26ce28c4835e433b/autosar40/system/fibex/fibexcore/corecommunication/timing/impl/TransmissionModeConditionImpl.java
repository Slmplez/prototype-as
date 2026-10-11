/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar40.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar40.commonstructure.filter.DataFilter;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class TransmissionModeConditionImpl
extends ARObjectImpl
implements TransmissionModeCondition,
IReferringClass {
    protected DataFilter dataFilter;
    protected ISignalToIPduMapping iSignalInIPdu;

    protected TransmissionModeConditionImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.TRANSMISSION_MODE_CONDITION;
    }

    public TransmissionModeDeclaration getTransmissionModeDeclaration() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TransmissionModeDeclaration)this.eContainer();
    }

    public NotificationChain basicSetTransmissionModeDeclaration(TransmissionModeDeclaration newTransmissionModeDeclaration, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTransmissionModeDeclaration, 4, msgs);
        return msgs;
    }

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration newTransmissionModeDeclaration) {
        if (newTransmissionModeDeclaration != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTransmissionModeDeclaration != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTransmissionModeDeclaration)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTransmissionModeDeclaration != null) {
                msgs = ((InternalEObject)newTransmissionModeDeclaration).eInverseAdd((InternalEObject)this, 7, TransmissionModeDeclaration.class, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeDeclaration(newTransmissionModeDeclaration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTransmissionModeDeclaration, (Object)newTransmissionModeDeclaration));
        }
    }

    public DataFilter getDataFilter() {
        return this.dataFilter;
    }

    public NotificationChain basicSetDataFilter(DataFilter newDataFilter, NotificationChain msgs) {
        DataFilter oldDataFilter = this.dataFilter;
        this.dataFilter = newDataFilter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataFilter, (Object)newDataFilter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDataFilter(DataFilter newDataFilter) {
        if (newDataFilter != this.dataFilter) {
            NotificationChain msgs = null;
            if (this.dataFilter != null) {
                msgs = ((InternalEObject)this.dataFilter).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newDataFilter != null) {
                msgs = ((InternalEObject)newDataFilter).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetDataFilter(newDataFilter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newDataFilter, (Object)newDataFilter));
        }
    }

    public ISignalToIPduMapping getISignalInIPdu() {
        if (this.iSignalInIPdu != null && this.iSignalInIPdu.eIsProxy()) {
            InternalEObject oldISignalInIPdu = (InternalEObject)this.iSignalInIPdu;
            this.iSignalInIPdu = (ISignalToIPduMapping)this.eResolveProxy(oldISignalInIPdu);
            if (this.iSignalInIPdu != oldISignalInIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldISignalInIPdu, (Object)this.iSignalInIPdu));
            }
        }
        return this.iSignalInIPdu;
    }

    public ISignalToIPduMapping basicGetISignalInIPdu() {
        return this.iSignalInIPdu;
    }

    public void setISignalInIPdu(ISignalToIPduMapping newISignalInIPdu) {
        ISignalToIPduMapping oldISignalInIPdu = this.iSignalInIPdu;
        this.iSignalInIPdu = newISignalInIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldISignalInIPdu, (Object)this.iSignalInIPdu));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTransmissionModeDeclaration((TransmissionModeDeclaration)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTransmissionModeDeclaration(null, msgs);
            }
            case 5: {
                return this.basicSetDataFilter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, TransmissionModeDeclaration.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTransmissionModeDeclaration();
            }
            case 5: {
                return this.getDataFilter();
            }
            case 6: {
                if (resolve) {
                    return this.getISignalInIPdu();
                }
                return this.basicGetISignalInIPdu();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTransmissionModeDeclaration((TransmissionModeDeclaration)newValue);
                return;
            }
            case 5: {
                this.setDataFilter((DataFilter)newValue);
                return;
            }
            case 6: {
                this.setISignalInIPdu((ISignalToIPduMapping)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTransmissionModeDeclaration(null);
                return;
            }
            case 5: {
                this.setDataFilter(null);
                return;
            }
            case 6: {
                this.setISignalInIPdu(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTransmissionModeDeclaration() != null;
            }
            case 5: {
                return this.dataFilter != null;
            }
            case 6: {
                return this.iSignalInIPdu != null;
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
}

