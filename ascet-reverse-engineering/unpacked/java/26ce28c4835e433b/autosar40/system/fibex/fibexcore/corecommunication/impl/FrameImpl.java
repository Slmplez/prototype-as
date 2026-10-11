/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.PduToFrameMapping;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
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
public class FrameImpl
extends FibexElementImpl
implements Frame {
    protected static final IntegerDatatype FRAME_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype frameLength = FRAME_LENGTH_EDEFAULT.clone();
    protected boolean frameLengthESet;
    protected EList<PduToFrameMapping> pduToFrameMappings;

    protected FrameImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.FRAME;
    }

    @Override
    public Integer getFrameLength() {
        return (Integer)this.frameLength.basicGetValue();
    }

    @Override
    public void setFrameLength(Integer newFrameLength) {
        Integer oldFrameLength = (Integer)this.frameLength.basicGetValue();
        this.frameLength.basicSetValue((Object)newFrameLength);
        boolean oldFrameLengthESet = this.frameLengthESet;
        this.frameLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldFrameLength, (Object)newFrameLength, !oldFrameLengthESet));
        }
    }

    @Override
    public void unsetFrameLength() {
        Integer oldFrameLength = (Integer)this.frameLength.basicGetValue();
        boolean oldFrameLengthESet = this.frameLengthESet;
        this.frameLength = FRAME_LENGTH_EDEFAULT.clone();
        this.frameLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldFrameLength, (Object)FRAME_LENGTH_EDEFAULT, oldFrameLengthESet));
        }
    }

    @Override
    public boolean isSetFrameLength() {
        return this.frameLengthESet;
    }

    @Override
    public EList<PduToFrameMapping> getPduToFrameMappings() {
        if (this.pduToFrameMappings == null) {
            this.pduToFrameMappings = new EObjectContainmentWithInverseEList(PduToFrameMapping.class, (InternalEObject)this, 22, 18);
        }
        return this.pduToFrameMappings;
    }

    @Override
    public IntegerDatatype getFrameLengthData() {
        return this.frameLength.clone();
    }

    @Override
    public void setFrameLengthData(IntegerDatatype newFrameLength) {
        this.frameLength.setRadix((int)newFrameLength.getRadix());
        this.frameLength.setNoOfDigits((int)newFrameLength.getNoOfDigits());
        this.setFrameLength(newFrameLength.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getPduToFrameMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getPduToFrameMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getFrameLength();
            }
            case 22: {
                return this.getPduToFrameMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setFrameLength((Integer)newValue);
                return;
            }
            case 22: {
                this.getPduToFrameMappings().clear();
                this.getPduToFrameMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetFrameLength();
                return;
            }
            case 22: {
                this.getPduToFrameMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetFrameLength();
            }
            case 22: {
                return this.pduToFrameMappings != null && !this.pduToFrameMappings.isEmpty();
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
        result.append(" (frameLength: ");
        if (this.frameLengthESet) {
            result.append(this.frameLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

