/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.EnumeratorT;
import com.etas.amd620.core.ComponentMain.ModeGroupType;
import com.etas.amd620.core.ComponentMain.impl.ItemTImpl;
import java.math.BigInteger;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class ModeGroupTypeImpl
extends ItemTImpl
implements ModeGroupType {
    protected EList<EnumeratorT> mode;
    protected static final BigInteger DEFAULT_MODE_EDEFAULT = null;
    protected BigInteger defaultMode = DEFAULT_MODE_EDEFAULT;

    protected ModeGroupTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.MODE_GROUP_TYPE;
    }

    @Override
    public EList<EnumeratorT> getMode() {
        if (this.mode == null) {
            this.mode = new EObjectContainmentEList(EnumeratorT.class, (InternalEObject)this, 11);
        }
        return this.mode;
    }

    @Override
    public BigInteger getDefaultMode() {
        return this.defaultMode;
    }

    @Override
    public void setDefaultMode(BigInteger newDefaultMode) {
        BigInteger oldDefaultMode = this.defaultMode;
        this.defaultMode = newDefaultMode;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldDefaultMode, (Object)this.defaultMode));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 11: {
                return ((InternalEList)this.getMode()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 11: {
                return this.getMode();
            }
            case 12: {
                return this.getDefaultMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 11: {
                this.getMode().clear();
                this.getMode().addAll((Collection)newValue);
                return;
            }
            case 12: {
                this.setDefaultMode((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 11: {
                this.getMode().clear();
                return;
            }
            case 12: {
                this.setDefaultMode(DEFAULT_MODE_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 11: {
                return this.mode != null && !this.mode.isEmpty();
            }
            case 12: {
                return DEFAULT_MODE_EDEFAULT == null ? this.defaultMode != null : !DEFAULT_MODE_EDEFAULT.equals(this.defaultMode);
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
        result.append(" (defaultMode: ");
        result.append(this.defaultMode);
        result.append(')');
        return result.toString();
    }
}

