/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.AtomicSoftwareComponentT;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ParameterMappingsType;
import com.etas.amd620.core.ComponentMain.VariableMappingsExternalType;
import com.etas.amd620.core.ComponentMain.VariableMappingsInternalType;
import com.etas.amd620.core.ComponentMain.impl.ComponentTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AtomicSoftwareComponentTImpl
extends ComponentTImpl
implements AtomicSoftwareComponentT {
    protected ParameterMappingsType parameterMappings;
    protected VariableMappingsInternalType variableMappingsInternal;
    protected VariableMappingsExternalType variableMappingsExternal;
    protected static final String CATEGORY_EDEFAULT = null;
    protected String category = CATEGORY_EDEFAULT;
    protected static final boolean SUPPORTS_MULTIPLE_INSTANTIATION_EDEFAULT = false;
    protected boolean supportsMultipleInstantiation = false;
    protected boolean supportsMultipleInstantiationESet;

    protected AtomicSoftwareComponentTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ATOMIC_SOFTWARE_COMPONENT_T;
    }

    @Override
    public ParameterMappingsType getParameterMappings() {
        return this.parameterMappings;
    }

    public NotificationChain basicSetParameterMappings(ParameterMappingsType newParameterMappings, NotificationChain msgs) {
        ParameterMappingsType oldParameterMappings = this.parameterMappings;
        this.parameterMappings = newParameterMappings;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldParameterMappings, (Object)newParameterMappings);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setParameterMappings(ParameterMappingsType newParameterMappings) {
        if (newParameterMappings != this.parameterMappings) {
            NotificationChain msgs = null;
            if (this.parameterMappings != null) {
                msgs = ((InternalEObject)this.parameterMappings).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newParameterMappings != null) {
                msgs = ((InternalEObject)newParameterMappings).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetParameterMappings(newParameterMappings, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newParameterMappings, (Object)newParameterMappings));
        }
    }

    @Override
    public VariableMappingsInternalType getVariableMappingsInternal() {
        return this.variableMappingsInternal;
    }

    public NotificationChain basicSetVariableMappingsInternal(VariableMappingsInternalType newVariableMappingsInternal, NotificationChain msgs) {
        VariableMappingsInternalType oldVariableMappingsInternal = this.variableMappingsInternal;
        this.variableMappingsInternal = newVariableMappingsInternal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldVariableMappingsInternal, (Object)newVariableMappingsInternal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariableMappingsInternal(VariableMappingsInternalType newVariableMappingsInternal) {
        if (newVariableMappingsInternal != this.variableMappingsInternal) {
            NotificationChain msgs = null;
            if (this.variableMappingsInternal != null) {
                msgs = ((InternalEObject)this.variableMappingsInternal).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newVariableMappingsInternal != null) {
                msgs = ((InternalEObject)newVariableMappingsInternal).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetVariableMappingsInternal(newVariableMappingsInternal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newVariableMappingsInternal, (Object)newVariableMappingsInternal));
        }
    }

    @Override
    public VariableMappingsExternalType getVariableMappingsExternal() {
        return this.variableMappingsExternal;
    }

    public NotificationChain basicSetVariableMappingsExternal(VariableMappingsExternalType newVariableMappingsExternal, NotificationChain msgs) {
        VariableMappingsExternalType oldVariableMappingsExternal = this.variableMappingsExternal;
        this.variableMappingsExternal = newVariableMappingsExternal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariableMappingsExternal, (Object)newVariableMappingsExternal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariableMappingsExternal(VariableMappingsExternalType newVariableMappingsExternal) {
        if (newVariableMappingsExternal != this.variableMappingsExternal) {
            NotificationChain msgs = null;
            if (this.variableMappingsExternal != null) {
                msgs = ((InternalEObject)this.variableMappingsExternal).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newVariableMappingsExternal != null) {
                msgs = ((InternalEObject)newVariableMappingsExternal).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetVariableMappingsExternal(newVariableMappingsExternal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newVariableMappingsExternal, (Object)newVariableMappingsExternal));
        }
    }

    @Override
    public String getCategory() {
        return this.category;
    }

    @Override
    public void setCategory(String newCategory) {
        String oldCategory = this.category;
        this.category = newCategory;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldCategory, (Object)this.category));
        }
    }

    @Override
    public boolean isSupportsMultipleInstantiation() {
        return this.supportsMultipleInstantiation;
    }

    @Override
    public void setSupportsMultipleInstantiation(boolean newSupportsMultipleInstantiation) {
        boolean oldSupportsMultipleInstantiation = this.supportsMultipleInstantiation;
        this.supportsMultipleInstantiation = newSupportsMultipleInstantiation;
        boolean oldSupportsMultipleInstantiationESet = this.supportsMultipleInstantiationESet;
        this.supportsMultipleInstantiationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, oldSupportsMultipleInstantiation, this.supportsMultipleInstantiation, !oldSupportsMultipleInstantiationESet));
        }
    }

    @Override
    public void unsetSupportsMultipleInstantiation() {
        boolean oldSupportsMultipleInstantiation = this.supportsMultipleInstantiation;
        boolean oldSupportsMultipleInstantiationESet = this.supportsMultipleInstantiationESet;
        this.supportsMultipleInstantiation = false;
        this.supportsMultipleInstantiationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, oldSupportsMultipleInstantiation, false, oldSupportsMultipleInstantiationESet));
        }
    }

    @Override
    public boolean isSetSupportsMultipleInstantiation() {
        return this.supportsMultipleInstantiationESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetParameterMappings(null, msgs);
            }
            case 20: {
                return this.basicSetVariableMappingsInternal(null, msgs);
            }
            case 21: {
                return this.basicSetVariableMappingsExternal(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getParameterMappings();
            }
            case 20: {
                return this.getVariableMappingsInternal();
            }
            case 21: {
                return this.getVariableMappingsExternal();
            }
            case 22: {
                return this.getCategory();
            }
            case 23: {
                return this.isSupportsMultipleInstantiation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setParameterMappings((ParameterMappingsType)newValue);
                return;
            }
            case 20: {
                this.setVariableMappingsInternal((VariableMappingsInternalType)newValue);
                return;
            }
            case 21: {
                this.setVariableMappingsExternal((VariableMappingsExternalType)newValue);
                return;
            }
            case 22: {
                this.setCategory((String)newValue);
                return;
            }
            case 23: {
                this.setSupportsMultipleInstantiation((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setParameterMappings(null);
                return;
            }
            case 20: {
                this.setVariableMappingsInternal(null);
                return;
            }
            case 21: {
                this.setVariableMappingsExternal(null);
                return;
            }
            case 22: {
                this.setCategory(CATEGORY_EDEFAULT);
                return;
            }
            case 23: {
                this.unsetSupportsMultipleInstantiation();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.parameterMappings != null;
            }
            case 20: {
                return this.variableMappingsInternal != null;
            }
            case 21: {
                return this.variableMappingsExternal != null;
            }
            case 22: {
                return CATEGORY_EDEFAULT == null ? this.category != null : !CATEGORY_EDEFAULT.equals(this.category);
            }
            case 23: {
                return this.isSetSupportsMultipleInstantiation();
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
        result.append(" (category: ");
        result.append(this.category);
        result.append(", supportsMultipleInstantiation: ");
        if (this.supportsMultipleInstantiationESet) {
            result.append(this.supportsMultipleInstantiation);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

