/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.system.fibex.fibex4lin.lincommunication.LinChecksumType;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.FrameTriggeringImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LinFrameTriggeringImpl
extends FrameTriggeringImpl
implements LinFrameTriggering {
    protected static final LinChecksumType CHECKSUM_TYPE_EDEFAULT = LinChecksumType.CLASSIC;
    protected LinChecksumType checksumType = CHECKSUM_TYPE_EDEFAULT;
    protected boolean checksumTypeESet;
    protected static final Integer IDENTIFIER_EDEFAULT = new Integer(0);
    protected Integer identifier = IDENTIFIER_EDEFAULT;
    protected boolean identifierESet;
    protected EList<RelativelyScheduledTiming> relativelyScheduledTimings;

    protected LinFrameTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_FRAME_TRIGGERING;
    }

    @Override
    public LinChecksumType getChecksumType() {
        return this.checksumType;
    }

    @Override
    public void setChecksumType(LinChecksumType newChecksumType) {
        LinChecksumType oldChecksumType = this.checksumType;
        this.checksumType = newChecksumType == null ? CHECKSUM_TYPE_EDEFAULT : newChecksumType;
        boolean oldChecksumTypeESet = this.checksumTypeESet;
        this.checksumTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldChecksumType, (Object)this.checksumType, !oldChecksumTypeESet));
        }
    }

    @Override
    public void unsetChecksumType() {
        LinChecksumType oldChecksumType = this.checksumType;
        boolean oldChecksumTypeESet = this.checksumTypeESet;
        this.checksumType = CHECKSUM_TYPE_EDEFAULT;
        this.checksumTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldChecksumType, (Object)CHECKSUM_TYPE_EDEFAULT, oldChecksumTypeESet));
        }
    }

    @Override
    public boolean isSetChecksumType() {
        return this.checksumTypeESet;
    }

    @Override
    public Integer getIdentifier() {
        return this.identifier;
    }

    @Override
    public void setIdentifier(Integer newIdentifier) {
        Integer oldIdentifier = this.identifier;
        this.identifier = newIdentifier;
        boolean oldIdentifierESet = this.identifierESet;
        this.identifierESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldIdentifier, (Object)this.identifier, !oldIdentifierESet));
        }
    }

    @Override
    public void unsetIdentifier() {
        Integer oldIdentifier = this.identifier;
        boolean oldIdentifierESet = this.identifierESet;
        this.identifier = IDENTIFIER_EDEFAULT;
        this.identifierESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldIdentifier, (Object)IDENTIFIER_EDEFAULT, oldIdentifierESet));
        }
    }

    @Override
    public boolean isSetIdentifier() {
        return this.identifierESet;
    }

    @Override
    public EList<RelativelyScheduledTiming> getRelativelyScheduledTimings() {
        if (this.relativelyScheduledTimings == null) {
            this.relativelyScheduledTimings = new EObjectContainmentWithInverseEList(RelativelyScheduledTiming.class, (InternalEObject)this, 23, 4);
        }
        return this.relativelyScheduledTimings;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getRelativelyScheduledTimings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getRelativelyScheduledTimings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getChecksumType();
            }
            case 22: {
                return this.getIdentifier();
            }
            case 23: {
                return this.getRelativelyScheduledTimings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setChecksumType((LinChecksumType)((Object)newValue));
                return;
            }
            case 22: {
                this.setIdentifier((Integer)newValue);
                return;
            }
            case 23: {
                this.getRelativelyScheduledTimings().clear();
                this.getRelativelyScheduledTimings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetChecksumType();
                return;
            }
            case 22: {
                this.unsetIdentifier();
                return;
            }
            case 23: {
                this.getRelativelyScheduledTimings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetChecksumType();
            }
            case 22: {
                return this.isSetIdentifier();
            }
            case 23: {
                return this.relativelyScheduledTimings != null && !this.relativelyScheduledTimings.isEmpty();
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
        result.append(" (checksumType: ");
        if (this.checksumTypeESet) {
            result.append((Object)this.checksumType);
        } else {
            result.append("<unset>");
        }
        result.append(", identifier: ");
        if (this.identifierESet) {
            result.append(this.identifier);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

