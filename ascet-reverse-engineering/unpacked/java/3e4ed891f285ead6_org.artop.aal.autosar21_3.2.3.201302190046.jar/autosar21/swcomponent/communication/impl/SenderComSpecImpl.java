/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GSenderComSpec
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.communication.impl;

import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.SenderComSpec;
import autosar21.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar21.swcomponent.communication.impl.PPortComSpecImpl;
import autosar21.swcomponent.communication.instanceref.SenderComSpecDataElement;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.util.Autosar21Factory;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import java.util.ArrayList;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class SenderComSpecImpl
extends PPortComSpecImpl
implements SenderComSpec {
    protected SenderComSpecDataElement dataElement;
    protected TransmissionAcknowledgementRequest transmissionAcknowledge;

    protected SenderComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.SENDER_COM_SPEC;
    }

    public GVariableDataPrototype gGetDataElement() {
        BasicEList untypedList = new BasicEList();
        SenderComSpecDataElement dataElement = this.getDataElement();
        if (dataElement != null) {
            untypedList.add((Object)this.getDataElement());
        }
        ArrayList<DataElementPrototype> resultObjects = new ArrayList<DataElementPrototype>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            DataElementPrototype resultObject = ((SenderComSpecDataElement)previousObject).getDataElementPrototype();
            if (resultObject == null) continue;
            resultObjects.add(resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        if (untypedList.isEmpty()) {
            return null;
        }
        return (GVariableDataPrototype)untypedList.get(0);
    }

    public void gSetDataElement(GVariableDataPrototype newGDataElement) {
        SenderComSpecDataElement dataElement = this.getDataElement();
        if (dataElement == null) {
            dataElement = Autosar21Factory.eINSTANCE.createSenderComSpecDataElement();
        }
        this.setDataElement(dataElement);
        dataElement.setDataElementPrototype((DataElementPrototype)newGDataElement);
    }

    @Override
    public SenderComSpecDataElement getDataElement() {
        return this.dataElement;
    }

    public NotificationChain basicSetDataElement(SenderComSpecDataElement newDataElement, NotificationChain msgs) {
        SenderComSpecDataElement oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDataElement, (Object)newDataElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDataElement(SenderComSpecDataElement newDataElement) {
        if (newDataElement != this.dataElement) {
            NotificationChain msgs = null;
            if (this.dataElement != null) {
                msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, 4, SenderComSpecDataElement.class, msgs);
            }
            if (newDataElement != null) {
                msgs = ((InternalEObject)newDataElement).eInverseAdd((InternalEObject)this, 4, SenderComSpecDataElement.class, msgs);
            }
            if ((msgs = this.basicSetDataElement(newDataElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newDataElement, (Object)newDataElement));
        }
    }

    @Override
    public TransmissionAcknowledgementRequest getTransmissionAcknowledge() {
        return this.transmissionAcknowledge;
    }

    public NotificationChain basicSetTransmissionAcknowledge(TransmissionAcknowledgementRequest newTransmissionAcknowledge, NotificationChain msgs) {
        TransmissionAcknowledgementRequest oldTransmissionAcknowledge = this.transmissionAcknowledge;
        this.transmissionAcknowledge = newTransmissionAcknowledge;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTransmissionAcknowledge, (Object)newTransmissionAcknowledge);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransmissionAcknowledge(TransmissionAcknowledgementRequest newTransmissionAcknowledge) {
        if (newTransmissionAcknowledge != this.transmissionAcknowledge) {
            NotificationChain msgs = null;
            if (this.transmissionAcknowledge != null) {
                msgs = ((InternalEObject)this.transmissionAcknowledge).eInverseRemove((InternalEObject)this, 4, TransmissionAcknowledgementRequest.class, msgs);
            }
            if (newTransmissionAcknowledge != null) {
                msgs = ((InternalEObject)newTransmissionAcknowledge).eInverseAdd((InternalEObject)this, 4, TransmissionAcknowledgementRequest.class, msgs);
            }
            if ((msgs = this.basicSetTransmissionAcknowledge(newTransmissionAcknowledge, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newTransmissionAcknowledge, (Object)newTransmissionAcknowledge));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.dataElement != null) {
                    msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetDataElement((SenderComSpecDataElement)otherEnd, msgs);
            }
            case 7: {
                if (this.transmissionAcknowledge != null) {
                    msgs = ((InternalEObject)this.transmissionAcknowledge).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetTransmissionAcknowledge((TransmissionAcknowledgementRequest)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetDataElement(null, msgs);
            }
            case 7: {
                return this.basicSetTransmissionAcknowledge(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetDataElement();
            }
            case 6: {
                return this.getDataElement();
            }
            case 7: {
                return this.getTransmissionAcknowledge();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetDataElement((GVariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setDataElement((SenderComSpecDataElement)newValue);
                return;
            }
            case 7: {
                this.setTransmissionAcknowledge((TransmissionAcknowledgementRequest)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gSetDataElement(null);
                return;
            }
            case 6: {
                this.setDataElement(null);
                return;
            }
            case 7: {
                this.setTransmissionAcknowledge(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gGetDataElement() != null;
            }
            case 6: {
                return this.dataElement != null;
            }
            case 7: {
                return this.transmissionAcknowledge != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GSenderComSpec.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GSenderComSpec.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

