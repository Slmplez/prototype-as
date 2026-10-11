/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.DataTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FreeFormatImpl
extends ARObjectImpl
implements FreeFormat {
    protected EList<Integer> byteValues;

    protected FreeFormatImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.FREE_FORMAT;
    }

    @Override
    public DataTiming getDataTiming() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (DataTiming)this.eContainer();
    }

    public NotificationChain basicSetDataTiming(DataTiming newDataTiming, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDataTiming, 4, msgs);
        return msgs;
    }

    @Override
    public void setDataTiming(DataTiming newDataTiming) {
        if (newDataTiming != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDataTiming != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDataTiming)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDataTiming != null) {
                msgs = ((InternalEObject)newDataTiming).eInverseAdd((InternalEObject)this, 8, DataTiming.class, msgs);
            }
            if ((msgs = this.basicSetDataTiming(newDataTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataTiming, (Object)newDataTiming));
        }
    }

    @Override
    public EList<Integer> getByteValues() {
        if (this.byteValues == null) {
            this.byteValues = new EDataTypeUniqueEList.Unsettable(Integer.class, (InternalEObject)this, 5);
        }
        return this.byteValues;
    }

    @Override
    public void unsetByteValues() {
        if (this.byteValues != null) {
            ((InternalEList.Unsettable)this.byteValues).unset();
        }
    }

    @Override
    public boolean isSetByteValues() {
        return this.byteValues != null && ((InternalEList.Unsettable)this.byteValues).isSet();
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDataTiming((DataTiming)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDataTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, DataTiming.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataTiming();
            }
            case 5: {
                return this.getByteValues();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDataTiming((DataTiming)newValue);
                return;
            }
            case 5: {
                this.getByteValues().clear();
                this.getByteValues().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDataTiming(null);
                return;
            }
            case 5: {
                this.unsetByteValues();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDataTiming() != null;
            }
            case 5: {
                return this.isSetByteValues();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (ByteValues: ");
        result.append(this.byteValues);
        result.append(')');
        return result.toString();
    }
}

