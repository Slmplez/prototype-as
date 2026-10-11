/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ESDLActionType;
import com.etas.amd620.core.ComponentSpecification.FormattedTextT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ESDLActionTypeImpl
extends MinimalEObjectImpl.Container
implements ESDLActionType {
    protected FormattedTextT codeBlock;

    protected ESDLActionTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getESDLActionType();
    }

    @Override
    public FormattedTextT getCodeBlock() {
        return this.codeBlock;
    }

    public NotificationChain basicSetCodeBlock(FormattedTextT newCodeBlock, NotificationChain msgs) {
        FormattedTextT oldCodeBlock = this.codeBlock;
        this.codeBlock = newCodeBlock;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldCodeBlock, (Object)newCodeBlock);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCodeBlock(FormattedTextT newCodeBlock) {
        if (newCodeBlock != this.codeBlock) {
            NotificationChain msgs = null;
            if (this.codeBlock != null) {
                msgs = ((InternalEObject)this.codeBlock).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newCodeBlock != null) {
                msgs = ((InternalEObject)newCodeBlock).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetCodeBlock(newCodeBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newCodeBlock, (Object)newCodeBlock));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetCodeBlock(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getCodeBlock();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setCodeBlock((FormattedTextT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setCodeBlock(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.codeBlock != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

