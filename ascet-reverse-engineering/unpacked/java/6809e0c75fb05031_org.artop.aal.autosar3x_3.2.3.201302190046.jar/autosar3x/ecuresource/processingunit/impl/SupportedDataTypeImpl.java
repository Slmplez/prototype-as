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
package autosar3x.ecuresource.processingunit.impl;

import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.ecuresource.processingunit.ProcessingunitPackage;
import autosar3x.ecuresource.processingunit.SupportedDataType;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
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
public class SupportedDataTypeImpl
extends IdentifiableImpl
implements SupportedDataType {
    protected EList<Integer> supportedDataSizes;

    protected SupportedDataTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ProcessingunitPackage.Literals.SUPPORTED_DATA_TYPE;
    }

    @Override
    public ProcessingUnit getProcessingUnit() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (ProcessingUnit)this.eContainer();
    }

    public NotificationChain basicSetProcessingUnit(ProcessingUnit newProcessingUnit, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newProcessingUnit, 17, msgs);
        return msgs;
    }

    @Override
    public void setProcessingUnit(ProcessingUnit newProcessingUnit) {
        if (newProcessingUnit != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newProcessingUnit != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newProcessingUnit)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newProcessingUnit != null) {
                msgs = ((InternalEObject)newProcessingUnit).eInverseAdd((InternalEObject)this, 40, ProcessingUnit.class, msgs);
            }
            if ((msgs = this.basicSetProcessingUnit(newProcessingUnit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newProcessingUnit, (Object)newProcessingUnit));
        }
    }

    @Override
    public EList<Integer> getSupportedDataSizes() {
        if (this.supportedDataSizes == null) {
            this.supportedDataSizes = new EDataTypeUniqueEList.Unsettable(Integer.class, (InternalEObject)this, 18);
        }
        return this.supportedDataSizes;
    }

    @Override
    public void unsetSupportedDataSizes() {
        if (this.supportedDataSizes != null) {
            ((InternalEList.Unsettable)this.supportedDataSizes).unset();
        }
    }

    @Override
    public boolean isSetSupportedDataSizes() {
        return this.supportedDataSizes != null && ((InternalEList.Unsettable)this.supportedDataSizes).isSet();
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetProcessingUnit((ProcessingUnit)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetProcessingUnit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 40, ProcessingUnit.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getProcessingUnit();
            }
            case 18: {
                return this.getSupportedDataSizes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setProcessingUnit((ProcessingUnit)newValue);
                return;
            }
            case 18: {
                this.getSupportedDataSizes().clear();
                this.getSupportedDataSizes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setProcessingUnit(null);
                return;
            }
            case 18: {
                this.unsetSupportedDataSizes();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getProcessingUnit() != null;
            }
            case 18: {
                return this.isSetSupportedDataSizes();
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
        result.append(" (supportedDataSizes: ");
        result.append(this.supportedDataSizes);
        result.append(')');
        return result.toString();
    }
}

