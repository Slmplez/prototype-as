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
package com.etas.amd620.core.amd620.impl;

import com.etas.amd620.core.ComponentProject.ProjectType;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.amd620.core.Implementationtypes.ImplementationTypesType;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.AscetProject;
import com.etas.amd620.core.amd620.DefaultConfiguration;
import com.etas.amd620.core.amd620.impl.AscetClassImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AscetProjectImpl
extends AscetClassImpl
implements AscetProject {
    protected ProjectType projectType;
    protected ImplementationTypesType implementationsType;
    protected FormulasType formulasType;

    protected AscetProjectImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return Amd620Package.Literals.ASCET_PROJECT;
    }

    @Override
    public ProjectType getProjectType() {
        return this.projectType;
    }

    public NotificationChain basicSetProjectType(ProjectType newProjectType, NotificationChain msgs) {
        ProjectType oldProjectType = this.projectType;
        this.projectType = newProjectType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldProjectType, (Object)newProjectType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setProjectType(ProjectType newProjectType) {
        if (newProjectType != this.projectType) {
            NotificationChain msgs = null;
            if (this.projectType != null) {
                msgs = ((InternalEObject)this.projectType).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newProjectType != null) {
                msgs = ((InternalEObject)newProjectType).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetProjectType(newProjectType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newProjectType, (Object)newProjectType));
        }
    }

    @Override
    public ImplementationTypesType getImplementationsType() {
        return this.implementationsType;
    }

    public NotificationChain basicSetImplementationsType(ImplementationTypesType newImplementationsType, NotificationChain msgs) {
        ImplementationTypesType oldImplementationsType = this.implementationsType;
        this.implementationsType = newImplementationsType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldImplementationsType, (Object)newImplementationsType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImplementationsType(ImplementationTypesType newImplementationsType) {
        if (newImplementationsType != this.implementationsType) {
            NotificationChain msgs = null;
            if (this.implementationsType != null) {
                msgs = ((InternalEObject)this.implementationsType).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newImplementationsType != null) {
                msgs = ((InternalEObject)newImplementationsType).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetImplementationsType(newImplementationsType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newImplementationsType, (Object)newImplementationsType));
        }
    }

    @Override
    public FormulasType getFormulasType() {
        return this.formulasType;
    }

    public NotificationChain basicSetFormulasType(FormulasType newFormulasType, NotificationChain msgs) {
        FormulasType oldFormulasType = this.formulasType;
        this.formulasType = newFormulasType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldFormulasType, (Object)newFormulasType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFormulasType(FormulasType newFormulasType) {
        if (newFormulasType != this.formulasType) {
            NotificationChain msgs = null;
            if (this.formulasType != null) {
                msgs = ((InternalEObject)this.formulasType).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newFormulasType != null) {
                msgs = ((InternalEObject)newFormulasType).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetFormulasType(newFormulasType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newFormulasType, (Object)newFormulasType));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetProjectType(null, msgs);
            }
            case 6: {
                return this.basicSetImplementationsType(null, msgs);
            }
            case 7: {
                return this.basicSetFormulasType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getProjectType();
            }
            case 6: {
                return this.getImplementationsType();
            }
            case 7: {
                return this.getFormulasType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setProjectType((ProjectType)newValue);
                return;
            }
            case 6: {
                this.setImplementationsType((ImplementationTypesType)newValue);
                return;
            }
            case 7: {
                this.setFormulasType((FormulasType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setProjectType(null);
                return;
            }
            case 6: {
                this.setImplementationsType(null);
                return;
            }
            case 7: {
                this.setFormulasType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.projectType != null;
            }
            case 6: {
                return this.implementationsType != null;
            }
            case 7: {
                return this.formulasType != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public DefaultConfiguration getDefaultConfiguration() {
        throw new UnsupportedOperationException();
    }
}

