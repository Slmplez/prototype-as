/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.LinChecksumType;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameTriggeringImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LinFrameTriggeringImpl
extends FrameTriggeringImpl
implements LinFrameTriggering {
    protected static final IntegerDatatype IDENTIFIER_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype identifier = IDENTIFIER_EDEFAULT.clone();
    protected boolean identifierESet;
    protected static final LinChecksumType LIN_CHECKSUM_EDEFAULT = LinChecksumType.CLASSIC;
    protected LinChecksumType linChecksum = LIN_CHECKSUM_EDEFAULT;
    protected boolean linChecksumESet;

    protected LinFrameTriggeringImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_FRAME_TRIGGERING;
    }

    public Integer getIdentifier() {
        return (Integer)this.identifier.basicGetValue();
    }

    public void setIdentifier(Integer newIdentifier) {
        Integer oldIdentifier = (Integer)this.identifier.basicGetValue();
        this.identifier.basicSetValue((Object)newIdentifier);
        boolean oldIdentifierESet = this.identifierESet;
        this.identifierESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldIdentifier, (Object)newIdentifier, !oldIdentifierESet));
        }
    }

    public void unsetIdentifier() {
        Integer oldIdentifier = (Integer)this.identifier.basicGetValue();
        boolean oldIdentifierESet = this.identifierESet;
        this.identifier = IDENTIFIER_EDEFAULT.clone();
        this.identifierESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldIdentifier, (Object)IDENTIFIER_EDEFAULT, oldIdentifierESet));
        }
    }

    public boolean isSetIdentifier() {
        return this.identifierESet;
    }

    public LinChecksumType getLinChecksum() {
        return this.linChecksum;
    }

    public void setLinChecksum(LinChecksumType newLinChecksum) {
        LinChecksumType oldLinChecksum = this.linChecksum;
        this.linChecksum = newLinChecksum == null ? LIN_CHECKSUM_EDEFAULT : newLinChecksum;
        boolean oldLinChecksumESet = this.linChecksumESet;
        this.linChecksumESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldLinChecksum, (Object)this.linChecksum, !oldLinChecksumESet));
        }
    }

    public void unsetLinChecksum() {
        LinChecksumType oldLinChecksum = this.linChecksum;
        boolean oldLinChecksumESet = this.linChecksumESet;
        this.linChecksum = LIN_CHECKSUM_EDEFAULT;
        this.linChecksumESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldLinChecksum, (Object)LIN_CHECKSUM_EDEFAULT, oldLinChecksumESet));
        }
    }

    public boolean isSetLinChecksum() {
        return this.linChecksumESet;
    }

    public IntegerDatatype getIdentifierData() {
        return this.identifier.clone();
    }

    public void setIdentifierData(IntegerDatatype newIdentifier) {
        this.identifier.setRadix((int)newIdentifier.getRadix());
        this.identifier.setNoOfDigits((int)newIdentifier.getNoOfDigits());
        this.setIdentifier(newIdentifier.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getIdentifier();
            }
            case 24: {
                return this.getLinChecksum();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setIdentifier((Integer)newValue);
                return;
            }
            case 24: {
                this.setLinChecksum((LinChecksumType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.unsetIdentifier();
                return;
            }
            case 24: {
                this.unsetLinChecksum();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.isSetIdentifier();
            }
            case 24: {
                return this.isSetLinChecksum();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (identifier: ");
        if (this.identifierESet) {
            result.append(this.identifier);
        } else {
            result.append("<unset>");
        }
        result.append(", linChecksum: ");
        if (this.linChecksumESet) {
            result.append((Object)this.linChecksum);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

