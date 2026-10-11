/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.PrePostHooksType;
import com.etas.amd620.core.ComponentProject.TaskBaseT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class TaskBaseTImpl
extends MinimalEObjectImpl.Container
implements TaskBaseT {
    protected static final PrePostHooksType PRE_POST_HOOKS_EDEFAULT = PrePostHooksType.NONE;
    protected PrePostHooksType prePostHooks = PRE_POST_HOOKS_EDEFAULT;
    protected boolean prePostHooksESet;
    protected static final BigInteger PRIORITY_EDEFAULT = null;
    protected BigInteger priority = PRIORITY_EDEFAULT;

    protected TaskBaseTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.TASK_BASE_T;
    }

    @Override
    public PrePostHooksType getPrePostHooks() {
        return this.prePostHooks;
    }

    @Override
    public void setPrePostHooks(PrePostHooksType newPrePostHooks) {
        PrePostHooksType oldPrePostHooks = this.prePostHooks;
        this.prePostHooks = newPrePostHooks == null ? PRE_POST_HOOKS_EDEFAULT : newPrePostHooks;
        boolean oldPrePostHooksESet = this.prePostHooksESet;
        this.prePostHooksESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldPrePostHooks, (Object)this.prePostHooks, !oldPrePostHooksESet));
        }
    }

    @Override
    public void unsetPrePostHooks() {
        PrePostHooksType oldPrePostHooks = this.prePostHooks;
        boolean oldPrePostHooksESet = this.prePostHooksESet;
        this.prePostHooks = PRE_POST_HOOKS_EDEFAULT;
        this.prePostHooksESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, (Object)oldPrePostHooks, (Object)PRE_POST_HOOKS_EDEFAULT, oldPrePostHooksESet));
        }
    }

    @Override
    public boolean isSetPrePostHooks() {
        return this.prePostHooksESet;
    }

    @Override
    public BigInteger getPriority() {
        return this.priority;
    }

    @Override
    public void setPriority(BigInteger newPriority) {
        BigInteger oldPriority = this.priority;
        this.priority = newPriority;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldPriority, (Object)this.priority));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getPrePostHooks();
            }
            case 1: {
                return this.getPriority();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setPrePostHooks((PrePostHooksType)((Object)newValue));
                return;
            }
            case 1: {
                this.setPriority((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetPrePostHooks();
                return;
            }
            case 1: {
                this.setPriority(PRIORITY_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetPrePostHooks();
            }
            case 1: {
                return PRIORITY_EDEFAULT == null ? this.priority != null : !PRIORITY_EDEFAULT.equals(this.priority);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (prePostHooks: ");
        if (this.prePostHooksESet) {
            result.append((Object)this.prePostHooks);
        } else {
            result.append("<unset>");
        }
        result.append(", priority: ");
        result.append(this.priority);
        result.append(')');
        return result.toString();
    }
}

