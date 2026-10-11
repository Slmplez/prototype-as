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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.AttributesBaseT;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ScopeType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class AttributesBaseTImpl
extends MinimalEObjectImpl.Container
implements AttributesBaseT {
    protected static final boolean DIRECT_EDEFAULT = false;
    protected boolean direct = false;
    protected boolean directESet;
    protected static final boolean GET_EDEFAULT = false;
    protected boolean get = false;
    protected boolean getESet;
    protected static final boolean READ_EDEFAULT = false;
    protected boolean read = false;
    protected boolean readESet;
    protected static final ScopeType SCOPE_EDEFAULT = ScopeType.LOCAL;
    protected ScopeType scope = SCOPE_EDEFAULT;
    protected boolean scopeESet;
    protected static final boolean SET_EDEFAULT = false;
    protected boolean set = false;
    protected boolean setESet;
    protected static final boolean WRITE_EDEFAULT = false;
    protected boolean write = false;
    protected boolean writeESet;

    protected AttributesBaseTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ATTRIBUTES_BASE_T;
    }

    @Override
    public boolean isDirect() {
        return this.direct;
    }

    @Override
    public void setDirect(boolean newDirect) {
        boolean oldDirect = this.direct;
        this.direct = newDirect;
        boolean oldDirectESet = this.directESet;
        this.directESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, oldDirect, this.direct, !oldDirectESet));
        }
    }

    @Override
    public void unsetDirect() {
        boolean oldDirect = this.direct;
        boolean oldDirectESet = this.directESet;
        this.direct = false;
        this.directESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, oldDirect, false, oldDirectESet));
        }
    }

    @Override
    public boolean isSetDirect() {
        return this.directESet;
    }

    @Override
    public boolean isGet() {
        return this.get;
    }

    @Override
    public void setGet(boolean newGet) {
        boolean oldGet = this.get;
        this.get = newGet;
        boolean oldGetESet = this.getESet;
        this.getESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldGet, this.get, !oldGetESet));
        }
    }

    @Override
    public void unsetGet() {
        boolean oldGet = this.get;
        boolean oldGetESet = this.getESet;
        this.get = false;
        this.getESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, oldGet, false, oldGetESet));
        }
    }

    @Override
    public boolean isSetGet() {
        return this.getESet;
    }

    @Override
    public boolean isRead() {
        return this.read;
    }

    @Override
    public void setRead(boolean newRead) {
        boolean oldRead = this.read;
        this.read = newRead;
        boolean oldReadESet = this.readESet;
        this.readESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldRead, this.read, !oldReadESet));
        }
    }

    @Override
    public void unsetRead() {
        boolean oldRead = this.read;
        boolean oldReadESet = this.readESet;
        this.read = false;
        this.readESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 2, oldRead, false, oldReadESet));
        }
    }

    @Override
    public boolean isSetRead() {
        return this.readESet;
    }

    @Override
    public ScopeType getScope() {
        return this.scope;
    }

    @Override
    public void setScope(ScopeType newScope) {
        ScopeType oldScope = this.scope;
        this.scope = newScope == null ? SCOPE_EDEFAULT : newScope;
        boolean oldScopeESet = this.scopeESet;
        this.scopeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldScope, (Object)this.scope, !oldScopeESet));
        }
    }

    @Override
    public void unsetScope() {
        ScopeType oldScope = this.scope;
        boolean oldScopeESet = this.scopeESet;
        this.scope = SCOPE_EDEFAULT;
        this.scopeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 3, (Object)oldScope, (Object)SCOPE_EDEFAULT, oldScopeESet));
        }
    }

    @Override
    public boolean isSetScope() {
        return this.scopeESet;
    }

    @Override
    public boolean isSet() {
        return this.set;
    }

    @Override
    public void setSet(boolean newSet) {
        boolean oldSet = this.set;
        this.set = newSet;
        boolean oldSetESet = this.setESet;
        this.setESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, oldSet, this.set, !oldSetESet));
        }
    }

    @Override
    public void unsetSet() {
        boolean oldSet = this.set;
        boolean oldSetESet = this.setESet;
        this.set = false;
        this.setESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, oldSet, false, oldSetESet));
        }
    }

    @Override
    public boolean isSetSet() {
        return this.setESet;
    }

    @Override
    public boolean isWrite() {
        return this.write;
    }

    @Override
    public void setWrite(boolean newWrite) {
        boolean oldWrite = this.write;
        this.write = newWrite;
        boolean oldWriteESet = this.writeESet;
        this.writeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldWrite, this.write, !oldWriteESet));
        }
    }

    @Override
    public void unsetWrite() {
        boolean oldWrite = this.write;
        boolean oldWriteESet = this.writeESet;
        this.write = false;
        this.writeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, oldWrite, false, oldWriteESet));
        }
    }

    @Override
    public boolean isSetWrite() {
        return this.writeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.isDirect();
            }
            case 1: {
                return this.isGet();
            }
            case 2: {
                return this.isRead();
            }
            case 3: {
                return this.getScope();
            }
            case 4: {
                return this.isSet();
            }
            case 5: {
                return this.isWrite();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setDirect((Boolean)newValue);
                return;
            }
            case 1: {
                this.setGet((Boolean)newValue);
                return;
            }
            case 2: {
                this.setRead((Boolean)newValue);
                return;
            }
            case 3: {
                this.setScope((ScopeType)((Object)newValue));
                return;
            }
            case 4: {
                this.setSet((Boolean)newValue);
                return;
            }
            case 5: {
                this.setWrite((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetDirect();
                return;
            }
            case 1: {
                this.unsetGet();
                return;
            }
            case 2: {
                this.unsetRead();
                return;
            }
            case 3: {
                this.unsetScope();
                return;
            }
            case 4: {
                this.unsetSet();
                return;
            }
            case 5: {
                this.unsetWrite();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetDirect();
            }
            case 1: {
                return this.isSetGet();
            }
            case 2: {
                return this.isSetRead();
            }
            case 3: {
                return this.isSetScope();
            }
            case 4: {
                return this.isSetSet();
            }
            case 5: {
                return this.isSetWrite();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (direct: ");
        if (this.directESet) {
            result.append(this.direct);
        } else {
            result.append("<unset>");
        }
        result.append(", get: ");
        if (this.getESet) {
            result.append(this.get);
        } else {
            result.append("<unset>");
        }
        result.append(", read: ");
        if (this.readESet) {
            result.append(this.read);
        } else {
            result.append("<unset>");
        }
        result.append(", scope: ");
        if (this.scopeESet) {
            result.append((Object)this.scope);
        } else {
            result.append("<unset>");
        }
        result.append(", set: ");
        if (this.setESet) {
            result.append(this.set);
        } else {
            result.append("<unset>");
        }
        result.append(", write: ");
        if (this.writeESet) {
            result.append(this.write);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

