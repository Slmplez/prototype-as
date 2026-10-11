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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.DiagramElementsComplexType;
import com.etas.amd620.core.ComponentSpecification.ESDLCodeT;
import com.etas.amd620.core.ComponentSpecification.ProjectSpecificationT;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicSpecificationTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ProjectSpecificationTImpl
extends GraphicSpecificationTImpl
implements ProjectSpecificationT {
    protected ESDLCodeT eSDLCode;
    protected DiagramElementsComplexType diagramElements;

    protected ProjectSpecificationTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getProjectSpecificationT();
    }

    @Override
    public ESDLCodeT getESDLCode() {
        return this.eSDLCode;
    }

    public NotificationChain basicSetESDLCode(ESDLCodeT newESDLCode, NotificationChain msgs) {
        ESDLCodeT oldESDLCode = this.eSDLCode;
        this.eSDLCode = newESDLCode;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldESDLCode, (Object)newESDLCode);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setESDLCode(ESDLCodeT newESDLCode) {
        if (newESDLCode != this.eSDLCode) {
            NotificationChain msgs = null;
            if (this.eSDLCode != null) {
                msgs = ((InternalEObject)this.eSDLCode).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newESDLCode != null) {
                msgs = ((InternalEObject)newESDLCode).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetESDLCode(newESDLCode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newESDLCode, (Object)newESDLCode));
        }
    }

    @Override
    public DiagramElementsComplexType getDiagramElements() {
        return this.diagramElements;
    }

    public NotificationChain basicSetDiagramElements(DiagramElementsComplexType newDiagramElements, NotificationChain msgs) {
        DiagramElementsComplexType oldDiagramElements = this.diagramElements;
        this.diagramElements = newDiagramElements;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldDiagramElements, (Object)newDiagramElements);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDiagramElements(DiagramElementsComplexType newDiagramElements) {
        if (newDiagramElements != this.diagramElements) {
            NotificationChain msgs = null;
            if (this.diagramElements != null) {
                msgs = ((InternalEObject)this.diagramElements).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newDiagramElements != null) {
                msgs = ((InternalEObject)newDiagramElements).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetDiagramElements(newDiagramElements, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newDiagramElements, (Object)newDiagramElements));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 1: {
                return this.basicSetESDLCode(null, msgs);
            }
            case 2: {
                return this.basicSetDiagramElements(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 1: {
                return this.getESDLCode();
            }
            case 2: {
                return this.getDiagramElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 1: {
                this.setESDLCode((ESDLCodeT)newValue);
                return;
            }
            case 2: {
                this.setDiagramElements((DiagramElementsComplexType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 1: {
                this.setESDLCode(null);
                return;
            }
            case 2: {
                this.setDiagramElements(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 1: {
                return this.eSDLCode != null;
            }
            case 2: {
                return this.diagramElements != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

