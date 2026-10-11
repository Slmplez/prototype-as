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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.pdustructure.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.system.pdustructure.Multiplexer;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.pdustructure.SubPDU;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PDUTypeImpl
extends ARElementImpl
implements PDUType {
    protected EList<SignalPosition> includedSignals;
    protected Multiplexer multiplexerDynamicPart;
    protected SubPDU multiplexerStaticPart;
    protected static final Boolean NEEDS_UPDATE_INDICATION_EDEFAULT = Boolean.FALSE;
    protected Boolean needsUpdateIndication = NEEDS_UPDATE_INDICATION_EDEFAULT;
    protected boolean needsUpdateIndicationESet;
    protected static final Integer PDU_LENGTH_EDEFAULT = new Integer(0);
    protected Integer pduLength = PDU_LENGTH_EDEFAULT;
    protected boolean pduLengthESet;

    protected PDUTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PdustructurePackage.Literals.PDU_TYPE;
    }

    @Override
    public EList<SignalPosition> getIncludedSignals() {
        if (this.includedSignals == null) {
            this.includedSignals = new EObjectContainmentEList(SignalPosition.class, (InternalEObject)this, 18);
        }
        return this.includedSignals;
    }

    @Override
    public Multiplexer getMultiplexerDynamicPart() {
        return this.multiplexerDynamicPart;
    }

    public NotificationChain basicSetMultiplexerDynamicPart(Multiplexer newMultiplexerDynamicPart, NotificationChain msgs) {
        Multiplexer oldMultiplexerDynamicPart = this.multiplexerDynamicPart;
        this.multiplexerDynamicPart = newMultiplexerDynamicPart;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldMultiplexerDynamicPart, (Object)newMultiplexerDynamicPart);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMultiplexerDynamicPart(Multiplexer newMultiplexerDynamicPart) {
        if (newMultiplexerDynamicPart != this.multiplexerDynamicPart) {
            NotificationChain msgs = null;
            if (this.multiplexerDynamicPart != null) {
                msgs = ((InternalEObject)this.multiplexerDynamicPart).eInverseRemove((InternalEObject)this, 4, Multiplexer.class, msgs);
            }
            if (newMultiplexerDynamicPart != null) {
                msgs = ((InternalEObject)newMultiplexerDynamicPart).eInverseAdd((InternalEObject)this, 4, Multiplexer.class, msgs);
            }
            if ((msgs = this.basicSetMultiplexerDynamicPart(newMultiplexerDynamicPart, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newMultiplexerDynamicPart, (Object)newMultiplexerDynamicPart));
        }
    }

    @Override
    public SubPDU getMultiplexerStaticPart() {
        return this.multiplexerStaticPart;
    }

    public NotificationChain basicSetMultiplexerStaticPart(SubPDU newMultiplexerStaticPart, NotificationChain msgs) {
        SubPDU oldMultiplexerStaticPart = this.multiplexerStaticPart;
        this.multiplexerStaticPart = newMultiplexerStaticPart;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMultiplexerStaticPart, (Object)newMultiplexerStaticPart);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMultiplexerStaticPart(SubPDU newMultiplexerStaticPart) {
        if (newMultiplexerStaticPart != this.multiplexerStaticPart) {
            NotificationChain msgs = null;
            if (this.multiplexerStaticPart != null) {
                msgs = ((InternalEObject)this.multiplexerStaticPart).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newMultiplexerStaticPart != null) {
                msgs = ((InternalEObject)newMultiplexerStaticPart).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetMultiplexerStaticPart(newMultiplexerStaticPart, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newMultiplexerStaticPart, (Object)newMultiplexerStaticPart));
        }
    }

    @Override
    public Boolean getNeedsUpdateIndication() {
        return this.needsUpdateIndication;
    }

    @Override
    public void setNeedsUpdateIndication(Boolean newNeedsUpdateIndication) {
        Boolean oldNeedsUpdateIndication = this.needsUpdateIndication;
        this.needsUpdateIndication = newNeedsUpdateIndication;
        boolean oldNeedsUpdateIndicationESet = this.needsUpdateIndicationESet;
        this.needsUpdateIndicationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNeedsUpdateIndication, (Object)this.needsUpdateIndication, !oldNeedsUpdateIndicationESet));
        }
    }

    @Override
    public void unsetNeedsUpdateIndication() {
        Boolean oldNeedsUpdateIndication = this.needsUpdateIndication;
        boolean oldNeedsUpdateIndicationESet = this.needsUpdateIndicationESet;
        this.needsUpdateIndication = NEEDS_UPDATE_INDICATION_EDEFAULT;
        this.needsUpdateIndicationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNeedsUpdateIndication, (Object)NEEDS_UPDATE_INDICATION_EDEFAULT, oldNeedsUpdateIndicationESet));
        }
    }

    @Override
    public boolean isSetNeedsUpdateIndication() {
        return this.needsUpdateIndicationESet;
    }

    @Override
    public Integer getPDULength() {
        return this.pduLength;
    }

    @Override
    public void setPDULength(Integer newPDULength) {
        Integer oldPDULength = this.pduLength;
        this.pduLength = newPDULength;
        boolean oldPDULengthESet = this.pduLengthESet;
        this.pduLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPDULength, (Object)this.pduLength, !oldPDULengthESet));
        }
    }

    @Override
    public void unsetPDULength() {
        Integer oldPDULength = this.pduLength;
        boolean oldPDULengthESet = this.pduLengthESet;
        this.pduLength = PDU_LENGTH_EDEFAULT;
        this.pduLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldPDULength, (Object)PDU_LENGTH_EDEFAULT, oldPDULengthESet));
        }
    }

    @Override
    public boolean isSetPDULength() {
        return this.pduLengthESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.multiplexerDynamicPart != null) {
                    msgs = ((InternalEObject)this.multiplexerDynamicPart).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetMultiplexerDynamicPart((Multiplexer)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return ((InternalEList)this.getIncludedSignals()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return this.basicSetMultiplexerDynamicPart(null, msgs);
            }
            case 20: {
                return this.basicSetMultiplexerStaticPart(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getIncludedSignals();
            }
            case 19: {
                return this.getMultiplexerDynamicPart();
            }
            case 20: {
                return this.getMultiplexerStaticPart();
            }
            case 21: {
                return this.getNeedsUpdateIndication();
            }
            case 22: {
                return this.getPDULength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.getIncludedSignals().clear();
                this.getIncludedSignals().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.setMultiplexerDynamicPart((Multiplexer)newValue);
                return;
            }
            case 20: {
                this.setMultiplexerStaticPart((SubPDU)newValue);
                return;
            }
            case 21: {
                this.setNeedsUpdateIndication((Boolean)newValue);
                return;
            }
            case 22: {
                this.setPDULength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.getIncludedSignals().clear();
                return;
            }
            case 19: {
                this.setMultiplexerDynamicPart(null);
                return;
            }
            case 20: {
                this.setMultiplexerStaticPart(null);
                return;
            }
            case 21: {
                this.unsetNeedsUpdateIndication();
                return;
            }
            case 22: {
                this.unsetPDULength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.includedSignals != null && !this.includedSignals.isEmpty();
            }
            case 19: {
                return this.multiplexerDynamicPart != null;
            }
            case 20: {
                return this.multiplexerStaticPart != null;
            }
            case 21: {
                return this.isSetNeedsUpdateIndication();
            }
            case 22: {
                return this.isSetPDULength();
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
        result.append(" (needsUpdateIndication: ");
        if (this.needsUpdateIndicationESet) {
            result.append(this.needsUpdateIndication);
        } else {
            result.append("<unset>");
        }
        result.append(", PDULength: ");
        if (this.pduLengthESet) {
            result.append(this.pduLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

