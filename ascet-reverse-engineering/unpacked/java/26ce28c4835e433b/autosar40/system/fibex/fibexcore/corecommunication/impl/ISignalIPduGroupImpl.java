/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduRefConditional;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import java.util.Collection;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ISignalIPduGroupImpl
extends FibexElementImpl
implements ISignalIPduGroup,
IReferringClass {
    protected static final CommunicationDirectionType COMMUNICATION_DIRECTION_EDEFAULT = CommunicationDirectionType.IN;
    protected CommunicationDirectionType communicationDirection = COMMUNICATION_DIRECTION_EDEFAULT;
    protected boolean communicationDirectionESet;
    protected static final String COMMUNICATION_MODE_EDEFAULT = "";
    protected String communicationMode = "";
    protected boolean communicationModeESet;
    protected EList<ISignalIPduGroup> containedISignalIPduGroups;
    protected EList<ISignalIPduRefConditional> iSignalIPdus;

    protected ISignalIPduGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_IPDU_GROUP;
    }

    @Override
    public CommunicationDirectionType getCommunicationDirection() {
        return this.communicationDirection;
    }

    @Override
    public void setCommunicationDirection(CommunicationDirectionType newCommunicationDirection) {
        CommunicationDirectionType oldCommunicationDirection = this.communicationDirection;
        this.communicationDirection = newCommunicationDirection == null ? COMMUNICATION_DIRECTION_EDEFAULT : newCommunicationDirection;
        boolean oldCommunicationDirectionESet = this.communicationDirectionESet;
        this.communicationDirectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldCommunicationDirection, (Object)this.communicationDirection, !oldCommunicationDirectionESet));
        }
    }

    @Override
    public void unsetCommunicationDirection() {
        CommunicationDirectionType oldCommunicationDirection = this.communicationDirection;
        boolean oldCommunicationDirectionESet = this.communicationDirectionESet;
        this.communicationDirection = COMMUNICATION_DIRECTION_EDEFAULT;
        this.communicationDirectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldCommunicationDirection, (Object)COMMUNICATION_DIRECTION_EDEFAULT, oldCommunicationDirectionESet));
        }
    }

    @Override
    public boolean isSetCommunicationDirection() {
        return this.communicationDirectionESet;
    }

    @Override
    public String getCommunicationMode() {
        return this.communicationMode;
    }

    @Override
    public void setCommunicationMode(String newCommunicationMode) {
        String oldCommunicationMode = this.communicationMode;
        this.communicationMode = newCommunicationMode;
        boolean oldCommunicationModeESet = this.communicationModeESet;
        this.communicationModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldCommunicationMode, (Object)this.communicationMode, !oldCommunicationModeESet));
        }
    }

    @Override
    public void unsetCommunicationMode() {
        String oldCommunicationMode = this.communicationMode;
        boolean oldCommunicationModeESet = this.communicationModeESet;
        this.communicationMode = COMMUNICATION_MODE_EDEFAULT;
        this.communicationModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldCommunicationMode, (Object)COMMUNICATION_MODE_EDEFAULT, oldCommunicationModeESet));
        }
    }

    @Override
    public boolean isSetCommunicationMode() {
        return this.communicationModeESet;
    }

    @Override
    public EList<ISignalIPduGroup> getContainedISignalIPduGroups() {
        if (this.containedISignalIPduGroups == null) {
            this.containedISignalIPduGroups = new EObjectResolvingReferringEList(ISignalIPduGroup.class, (InternalEObject)this, 23);
        }
        return this.containedISignalIPduGroups;
    }

    @Override
    public EList<ISignalIPduRefConditional> getISignalIPdus() {
        if (this.iSignalIPdus == null) {
            this.iSignalIPdus = new EObjectContainmentWithInverseEList(ISignalIPduRefConditional.class, (InternalEObject)this, 24, 4);
        }
        return this.iSignalIPdus;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return ((InternalEList)this.getISignalIPdus()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return ((InternalEList)this.getISignalIPdus()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getCommunicationDirection();
            }
            case 22: {
                return this.getCommunicationMode();
            }
            case 23: {
                return this.getContainedISignalIPduGroups();
            }
            case 24: {
                return this.getISignalIPdus();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setCommunicationDirection((CommunicationDirectionType)((Object)newValue));
                return;
            }
            case 22: {
                this.setCommunicationMode((String)newValue);
                return;
            }
            case 23: {
                this.getContainedISignalIPduGroups().clear();
                this.getContainedISignalIPduGroups().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getISignalIPdus().clear();
                this.getISignalIPdus().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetCommunicationDirection();
                return;
            }
            case 22: {
                this.unsetCommunicationMode();
                return;
            }
            case 23: {
                this.getContainedISignalIPduGroups().clear();
                return;
            }
            case 24: {
                this.getISignalIPdus().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetCommunicationDirection();
            }
            case 22: {
                return this.isSetCommunicationMode();
            }
            case 23: {
                return this.containedISignalIPduGroups != null && !this.containedISignalIPduGroups.isEmpty();
            }
            case 24: {
                return this.iSignalIPdus != null && !this.iSignalIPdus.isEmpty();
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
        result.append(" (communicationDirection: ");
        if (this.communicationDirectionESet) {
            result.append((Object)this.communicationDirection);
        } else {
            result.append("<unset>");
        }
        result.append(", communicationMode: ");
        if (this.communicationModeESet) {
            result.append(this.communicationMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

