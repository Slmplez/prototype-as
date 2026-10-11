/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.communication.impl;

import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.QueuedReceiverComSpec;
import autosar3x.swcomponent.communication.impl.ReceiverComSpecImpl;
import gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec;
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
    protected static final Integer QUEUE_LENGTH_EDEFAULT = new Integer(0);
    protected Integer queueLength = QUEUE_LENGTH_EDEFAULT;
    protected boolean queueLengthESet;

    protected QueuedReceiverComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.QUEUED_RECEIVER_COM_SPEC;
    }

    public Integer gGetQueueLength() {
        Integer tgtFeatureValue = this.getQueueLength();
        return tgtFeatureValue;
    }

    public void gSetQueueLength(Integer newGQueueLength) {
        this.setQueueLength(newGQueueLength);
    }

    public void gUnsetQueueLength() {
        this.unsetQueueLength();
    }

    public boolean gIsSetQueueLength() {
        return this.isSetQueueLength();
    }

    @Override
    public Integer getQueueLength() {
        return this.queueLength;
    }

    @Override
    public void setQueueLength(Integer newQueueLength) {
        Integer oldQueueLength = this.queueLength;
        this.queueLength = newQueueLength;
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldQueueLength, (Object)this.queueLength, !oldQueueLengthESet));
        }
    }

    @Override
    public void unsetQueueLength() {
        Integer oldQueueLength = this.queueLength;
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLength = QUEUE_LENGTH_EDEFAULT;
        this.queueLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldQueueLength, (Object)QUEUE_LENGTH_EDEFAULT, oldQueueLengthESet));
        }
    }

    @Override
    public boolean isSetQueueLength() {
        return this.queueLengthESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.gGetQueueLength();
            }
            case 10: {
                return this.getQueueLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.gSetQueueLength((Integer)newValue);
                return;
            }
            case 10: {
                this.setQueueLength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.gUnsetQueueLength();
                return;
            }
            case 10: {
                this.unsetQueueLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.gIsSetQueueLength();
            }
            case 10: {
                return this.isSetQueueLength();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GQueuedReceiverComSpec.class) {
            switch (derivedFeatureID) {
                case 9: {
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
                    return 9;
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

