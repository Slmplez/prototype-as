/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibex4lin.lintopology.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveContent;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4lin.lintopology.impl.LinCommunicationControllerContentImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class LinSlaveContentImpl
extends LinCommunicationControllerContentImpl
implements LinSlaveContent {
    protected static final IntegerDatatype CONFIGURED_NAD_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype configuredNad = CONFIGURED_NAD_EDEFAULT.clone();
    protected boolean configuredNadESet;
    protected static final PositiveIntegerDatatype FUNCTION_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype functionId = FUNCTION_ID_EDEFAULT.clone();
    protected boolean functionIdESet;
    protected LinErrorResponse linErrorResponse;
    protected static final PositiveIntegerDatatype SUPPLIER_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype supplierId = SUPPLIER_ID_EDEFAULT.clone();
    protected boolean supplierIdESet;
    protected static final PositiveIntegerDatatype VARIANT_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype variantId = VARIANT_ID_EDEFAULT.clone();
    protected boolean variantIdESet;

    protected LinSlaveContentImpl() {
    }

    protected EClass eStaticClass() {
        return LintopologyPackage.Literals.LIN_SLAVE_CONTENT;
    }

    public Integer getConfiguredNad() {
        return (Integer)this.configuredNad.basicGetValue();
    }

    public void setConfiguredNad(Integer newConfiguredNad) {
        Integer oldConfiguredNad = (Integer)this.configuredNad.basicGetValue();
        this.configuredNad.basicSetValue((Object)newConfiguredNad);
        boolean oldConfiguredNadESet = this.configuredNadESet;
        this.configuredNadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldConfiguredNad, (Object)newConfiguredNad, !oldConfiguredNadESet));
        }
    }

    public void unsetConfiguredNad() {
        Integer oldConfiguredNad = (Integer)this.configuredNad.basicGetValue();
        boolean oldConfiguredNadESet = this.configuredNadESet;
        this.configuredNad = CONFIGURED_NAD_EDEFAULT.clone();
        this.configuredNadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldConfiguredNad, (Object)CONFIGURED_NAD_EDEFAULT, oldConfiguredNadESet));
        }
    }

    public boolean isSetConfiguredNad() {
        return this.configuredNadESet;
    }

    public Long getFunctionId() {
        return (Long)this.functionId.basicGetValue();
    }

    public void setFunctionId(Long newFunctionId) {
        Long oldFunctionId = (Long)this.functionId.basicGetValue();
        this.functionId.basicSetValue((Object)newFunctionId);
        boolean oldFunctionIdESet = this.functionIdESet;
        this.functionIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFunctionId, (Object)newFunctionId, !oldFunctionIdESet));
        }
    }

    public void unsetFunctionId() {
        Long oldFunctionId = (Long)this.functionId.basicGetValue();
        boolean oldFunctionIdESet = this.functionIdESet;
        this.functionId = FUNCTION_ID_EDEFAULT.clone();
        this.functionIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldFunctionId, (Object)FUNCTION_ID_EDEFAULT, oldFunctionIdESet));
        }
    }

    public boolean isSetFunctionId() {
        return this.functionIdESet;
    }

    public LinErrorResponse getLinErrorResponse() {
        return this.linErrorResponse;
    }

    public NotificationChain basicSetLinErrorResponse(LinErrorResponse newLinErrorResponse, NotificationChain msgs) {
        LinErrorResponse oldLinErrorResponse = this.linErrorResponse;
        this.linErrorResponse = newLinErrorResponse;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldLinErrorResponse, (Object)newLinErrorResponse);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLinErrorResponse(LinErrorResponse newLinErrorResponse) {
        if (newLinErrorResponse != this.linErrorResponse) {
            NotificationChain msgs = null;
            if (this.linErrorResponse != null) {
                msgs = ((InternalEObject)this.linErrorResponse).eInverseRemove((InternalEObject)this, 4, LinErrorResponse.class, msgs);
            }
            if (newLinErrorResponse != null) {
                msgs = ((InternalEObject)newLinErrorResponse).eInverseAdd((InternalEObject)this, 4, LinErrorResponse.class, msgs);
            }
            if ((msgs = this.basicSetLinErrorResponse(newLinErrorResponse, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newLinErrorResponse, (Object)newLinErrorResponse));
        }
    }

    public Long getSupplierId() {
        return (Long)this.supplierId.basicGetValue();
    }

    public void setSupplierId(Long newSupplierId) {
        Long oldSupplierId = (Long)this.supplierId.basicGetValue();
        this.supplierId.basicSetValue((Object)newSupplierId);
        boolean oldSupplierIdESet = this.supplierIdESet;
        this.supplierIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSupplierId, (Object)newSupplierId, !oldSupplierIdESet));
        }
    }

    public void unsetSupplierId() {
        Long oldSupplierId = (Long)this.supplierId.basicGetValue();
        boolean oldSupplierIdESet = this.supplierIdESet;
        this.supplierId = SUPPLIER_ID_EDEFAULT.clone();
        this.supplierIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldSupplierId, (Object)SUPPLIER_ID_EDEFAULT, oldSupplierIdESet));
        }
    }

    public boolean isSetSupplierId() {
        return this.supplierIdESet;
    }

    public Long getVariantId() {
        return (Long)this.variantId.basicGetValue();
    }

    public void setVariantId(Long newVariantId) {
        Long oldVariantId = (Long)this.variantId.basicGetValue();
        this.variantId.basicSetValue((Object)newVariantId);
        boolean oldVariantIdESet = this.variantIdESet;
        this.variantIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariantId, (Object)newVariantId, !oldVariantIdESet));
        }
    }

    public void unsetVariantId() {
        Long oldVariantId = (Long)this.variantId.basicGetValue();
        boolean oldVariantIdESet = this.variantIdESet;
        this.variantId = VARIANT_ID_EDEFAULT.clone();
        this.variantIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldVariantId, (Object)VARIANT_ID_EDEFAULT, oldVariantIdESet));
        }
    }

    public boolean isSetVariantId() {
        return this.variantIdESet;
    }

    public IntegerDatatype getConfiguredNadData() {
        return this.configuredNad.clone();
    }

    public void setConfiguredNadData(IntegerDatatype newConfiguredNad) {
        this.configuredNad.setRadix((int)newConfiguredNad.getRadix());
        this.configuredNad.setNoOfDigits((int)newConfiguredNad.getNoOfDigits());
        this.setConfiguredNad(newConfiguredNad.getValue());
    }

    public PositiveIntegerDatatype getFunctionIdData() {
        return this.functionId.clone();
    }

    public void setFunctionIdData(PositiveIntegerDatatype newFunctionId) {
        this.functionId.setRadix((int)newFunctionId.getRadix());
        this.functionId.setNoOfDigits((int)newFunctionId.getNoOfDigits());
        this.setFunctionId(newFunctionId.getValue());
    }

    public PositiveIntegerDatatype getSupplierIdData() {
        return this.supplierId.clone();
    }

    public void setSupplierIdData(PositiveIntegerDatatype newSupplierId) {
        this.supplierId.setRadix((int)newSupplierId.getRadix());
        this.supplierId.setNoOfDigits((int)newSupplierId.getNoOfDigits());
        this.setSupplierId(newSupplierId.getValue());
    }

    public PositiveIntegerDatatype getVariantIdData() {
        return this.variantId.clone();
    }

    public void setVariantIdData(PositiveIntegerDatatype newVariantId) {
        this.variantId.setRadix((int)newVariantId.getRadix());
        this.variantId.setNoOfDigits((int)newVariantId.getNoOfDigits());
        this.setVariantId(newVariantId.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.linErrorResponse != null) {
                    msgs = ((InternalEObject)this.linErrorResponse).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetLinErrorResponse((LinErrorResponse)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetLinErrorResponse(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getConfiguredNad();
            }
            case 6: {
                return this.getFunctionId();
            }
            case 7: {
                return this.getLinErrorResponse();
            }
            case 8: {
                return this.getSupplierId();
            }
            case 9: {
                return this.getVariantId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setConfiguredNad((Integer)newValue);
                return;
            }
            case 6: {
                this.setFunctionId((Long)newValue);
                return;
            }
            case 7: {
                this.setLinErrorResponse((LinErrorResponse)newValue);
                return;
            }
            case 8: {
                this.setSupplierId((Long)newValue);
                return;
            }
            case 9: {
                this.setVariantId((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetConfiguredNad();
                return;
            }
            case 6: {
                this.unsetFunctionId();
                return;
            }
            case 7: {
                this.setLinErrorResponse(null);
                return;
            }
            case 8: {
                this.unsetSupplierId();
                return;
            }
            case 9: {
                this.unsetVariantId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetConfiguredNad();
            }
            case 6: {
                return this.isSetFunctionId();
            }
            case 7: {
                return this.linErrorResponse != null;
            }
            case 8: {
                return this.isSetSupplierId();
            }
            case 9: {
                return this.isSetVariantId();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (configuredNad: ");
        if (this.configuredNadESet) {
            result.append(this.configuredNad);
        } else {
            result.append("<unset>");
        }
        result.append(", functionId: ");
        if (this.functionIdESet) {
            result.append(this.functionId);
        } else {
            result.append("<unset>");
        }
        result.append(", supplierId: ");
        if (this.supplierIdESet) {
            result.append(this.supplierId);
        } else {
            result.append("<unset>");
        }
        result.append(", variantId: ");
        if (this.variantIdESet) {
            result.append(this.variantId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

