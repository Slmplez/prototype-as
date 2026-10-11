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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.GraphicSpecificationT;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class GraphicSpecificationTImpl
extends MinimalEObjectImpl.Container
implements GraphicSpecificationT {
    protected static final BigInteger HIGHEST_USED_GRAPHICAL_IDENTIFIER_EDEFAULT = null;
    protected BigInteger highestUsedGraphicalIdentifier = HIGHEST_USED_GRAPHICAL_IDENTIFIER_EDEFAULT;

    protected GraphicSpecificationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getGraphicSpecificationT();
    }

    @Override
    public BigInteger getHighestUsedGraphicalIdentifier() {
        return this.highestUsedGraphicalIdentifier;
    }

    @Override
    public void setHighestUsedGraphicalIdentifier(BigInteger newHighestUsedGraphicalIdentifier) {
        BigInteger oldHighestUsedGraphicalIdentifier = this.highestUsedGraphicalIdentifier;
        this.highestUsedGraphicalIdentifier = newHighestUsedGraphicalIdentifier;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldHighestUsedGraphicalIdentifier, (Object)this.highestUsedGraphicalIdentifier));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getHighestUsedGraphicalIdentifier();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setHighestUsedGraphicalIdentifier((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setHighestUsedGraphicalIdentifier(HIGHEST_USED_GRAPHICAL_IDENTIFIER_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return HIGHEST_USED_GRAPHICAL_IDENTIFIER_EDEFAULT == null ? this.highestUsedGraphicalIdentifier != null : !HIGHEST_USED_GRAPHICAL_IDENTIFIER_EDEFAULT.equals(this.highestUsedGraphicalIdentifier);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (highestUsedGraphicalIdentifier: ");
        result.append(this.highestUsedGraphicalIdentifier);
        result.append(')');
        return result.toString();
    }
}

