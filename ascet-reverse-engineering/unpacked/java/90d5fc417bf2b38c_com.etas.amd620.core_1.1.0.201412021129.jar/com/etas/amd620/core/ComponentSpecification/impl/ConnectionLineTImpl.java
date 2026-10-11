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
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConnectionLineT;
import com.etas.amd620.core.ComponentSpecification.PointT;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class ConnectionLineTImpl
extends MinimalEObjectImpl.Container
implements ConnectionLineT {
    protected EList<PointT> bendPoint;
    protected static final boolean COMMENT_LINE_EDEFAULT = false;
    protected boolean commentLine = false;
    protected boolean commentLineESet;

    protected ConnectionLineTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getConnectionLineT();
    }

    @Override
    public EList<PointT> getBendPoint() {
        if (this.bendPoint == null) {
            this.bendPoint = new EObjectContainmentEList(PointT.class, (InternalEObject)this, 0);
        }
        return this.bendPoint;
    }

    @Override
    public boolean isCommentLine() {
        return this.commentLine;
    }

    @Override
    public void setCommentLine(boolean newCommentLine) {
        boolean oldCommentLine = this.commentLine;
        this.commentLine = newCommentLine;
        boolean oldCommentLineESet = this.commentLineESet;
        this.commentLineESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldCommentLine, this.commentLine, !oldCommentLineESet));
        }
    }

    @Override
    public void unsetCommentLine() {
        boolean oldCommentLine = this.commentLine;
        boolean oldCommentLineESet = this.commentLineESet;
        this.commentLine = false;
        this.commentLineESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, oldCommentLine, false, oldCommentLineESet));
        }
    }

    @Override
    public boolean isSetCommentLine() {
        return this.commentLineESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getBendPoint()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getBendPoint();
            }
            case 1: {
                return this.isCommentLine();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getBendPoint().clear();
                this.getBendPoint().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setCommentLine((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getBendPoint().clear();
                return;
            }
            case 1: {
                this.unsetCommentLine();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.bendPoint != null && !this.bendPoint.isEmpty();
            }
            case 1: {
                return this.isSetCommentLine();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (commentLine: ");
        if (this.commentLineESet) {
            result.append(this.commentLine);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

