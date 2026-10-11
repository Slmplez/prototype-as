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
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.FileReferenceT;
import com.etas.amd620.core.ComponentProject.ModelConfigurationT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ModelConfigurationTImpl
extends MinimalEObjectImpl.Container
implements ModelConfigurationT {
    protected FileReferenceT formulasFile;
    protected FileReferenceT implementationTypesFile;

    protected ModelConfigurationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.MODEL_CONFIGURATION_T;
    }

    @Override
    public FileReferenceT getFormulasFile() {
        return this.formulasFile;
    }

    public NotificationChain basicSetFormulasFile(FileReferenceT newFormulasFile, NotificationChain msgs) {
        FileReferenceT oldFormulasFile = this.formulasFile;
        this.formulasFile = newFormulasFile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldFormulasFile, (Object)newFormulasFile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFormulasFile(FileReferenceT newFormulasFile) {
        if (newFormulasFile != this.formulasFile) {
            NotificationChain msgs = null;
            if (this.formulasFile != null) {
                msgs = ((InternalEObject)this.formulasFile).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newFormulasFile != null) {
                msgs = ((InternalEObject)newFormulasFile).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetFormulasFile(newFormulasFile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newFormulasFile, (Object)newFormulasFile));
        }
    }

    @Override
    public FileReferenceT getImplementationTypesFile() {
        return this.implementationTypesFile;
    }

    public NotificationChain basicSetImplementationTypesFile(FileReferenceT newImplementationTypesFile, NotificationChain msgs) {
        FileReferenceT oldImplementationTypesFile = this.implementationTypesFile;
        this.implementationTypesFile = newImplementationTypesFile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldImplementationTypesFile, (Object)newImplementationTypesFile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImplementationTypesFile(FileReferenceT newImplementationTypesFile) {
        if (newImplementationTypesFile != this.implementationTypesFile) {
            NotificationChain msgs = null;
            if (this.implementationTypesFile != null) {
                msgs = ((InternalEObject)this.implementationTypesFile).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newImplementationTypesFile != null) {
                msgs = ((InternalEObject)newImplementationTypesFile).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetImplementationTypesFile(newImplementationTypesFile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newImplementationTypesFile, (Object)newImplementationTypesFile));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetFormulasFile(null, msgs);
            }
            case 1: {
                return this.basicSetImplementationTypesFile(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getFormulasFile();
            }
            case 1: {
                return this.getImplementationTypesFile();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setFormulasFile((FileReferenceT)newValue);
                return;
            }
            case 1: {
                this.setImplementationTypesFile((FileReferenceT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setFormulasFile(null);
                return;
            }
            case 1: {
                this.setImplementationTypesFile(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.formulasFile != null;
            }
            case 1: {
                return this.implementationTypesFile != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

