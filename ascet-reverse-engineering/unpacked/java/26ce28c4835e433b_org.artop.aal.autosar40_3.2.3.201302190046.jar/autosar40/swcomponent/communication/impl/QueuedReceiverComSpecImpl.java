/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.communication.impl;

import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.QueuedReceiverComSpec;
import autosar40.swcomponent.communication.impl.ReceiverComSpecImpl;
import gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QueuedReceiverComSpecImpl
extends ReceiverComSpecImpl
implements QueuedReceiverComSpec {
    protected static final Integer GQUEUE_LENGTH_EDEFAULT = null;
    protected static final PositiveIntegerDatatype QUEUE_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype queueLength = QUEUE_LENGTH_EDEFAULT.clone();
    protected boolean queueLengthESet;

    protected QueuedReceiverComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.QUEUED_RECEIVER_COM_SPEC;
    }

    public Integer gGetQueueLength() {
        Long tgtFeatureValue = this.getQueueLength();
        return tgtFeatureValue.intValue();
    }

    public void gSetQueueLength(Integer newGQueueLength) {
        this.setQueueLength(newGQueueLength.longValue());
    }

    public void gUnsetQueueLength() {
        this.unsetQueueLength();
    }

    public boolean gIsSetQueueLength() {
        return this.isSetQueueLength();
    }

    @Override
    public Long getQueueLength() {
        return (Long)this.queueLength.basicGetValue();
    }

    @Override
    public void setQueueLength(Long newQueueLength) {
        Long oldQueueLength = (Long)this.queueLength.basicGetValue();
        this.queueLength.basicSetValue((Object)newQueueLength);
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldQueueLength, (Object)newQueueLength, !oldQueueLengthESet));
        }
    }

    @Override
    public void unsetQueueLength() {
        Long oldQueueLength = (Long)this.queueLength.basicGetValue();
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLength = QUEUE_LENGTH_EDEFAULT.clone();
        this.queueLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldQueueLength, (Object)QUEUE_LENGTH_EDEFAULT, oldQueueLengthESet));
        }
    }

    @Override
    public boolean isSetQueueLength() {
        return this.queueLengthESet;
    }

    @Override
    public PositiveIntegerDatatype getQueueLengthData() {
        return this.queueLength.clone();
    }

    @Override
    public void setQueueLengthData(PositiveIntegerDatatype newQueueLength) {
        this.queueLength.setRadix((int)newQueueLength.getRadix());
        this.queueLength.setNoOfDigits((int)newQueueLength.getNoOfDigits());
        this.setQueueLength(newQueueLength.getValue());
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 13: {
                return this.gGetQueueLength();
            }
            case 14: {
                return this.getQueueLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 13: {
                this.gSetQueueLength((Integer)newValue);
                return;
            }
            case 14: {
                this.setQueueLength((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 13: {
                this.gUnsetQueueLength();
                return;
            }
            case 14: {
                this.unsetQueueLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 13: {
                return this.gIsSetQueueLength();
            }
            case 14: {
                return this.isSetQueueLength();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GQueuedReceiverComSpec.class) {
            switch (derivedFeatureID) {
                case 13: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GQueuedReceiverComSpec.class) {
            switch (baseFeatureID) {
                case 3: {
                    return 13;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (queueLength: ");
        if (this.queueLengthESet) {
            result.append(this.queueLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

