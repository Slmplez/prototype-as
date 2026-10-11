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
package com.etas.amd620.core.amd620.impl;

import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentMain.ComponentMainType;
import com.etas.amd620.core.ComponentProject.ProjectType;
import com.etas.amd620.core.ComponentSpecification.SpecificationsType;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.amd620.core.Implementationtypes.ImplementationTypesType;
import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.DefaultConfiguration;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class DefaultConfigurationImpl
extends MinimalEObjectImpl.Container
implements DefaultConfiguration {
    protected ComponentMainType componentMainType;
    protected ComponentDataType componentDataType;
    protected ComponentImplementationType componentImplementationType;
    protected SpecificationsType specificationsType;
    protected ProjectType projectType;
    protected ImplementationTypesType implementationsType;
    protected FormulasType formulasType;

    protected DefaultConfigurationImpl() {
    }

    protected EClass eStaticClass() {
        return Amd620Package.Literals.DEFAULT_CONFIGURATION;
    }

    @Override
    public ComponentMainType getComponentMainType() {
        return this.componentMainType;
    }

    public NotificationChain basicSetComponentMainType(ComponentMainType newComponentMainType, NotificationChain msgs) {
        ComponentMainType oldComponentMainType = this.componentMainType;
        this.componentMainType = newComponentMainType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldComponentMainType, (Object)newComponentMainType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComponentMainType(ComponentMainType newComponentMainType) {
        if (newComponentMainType != this.componentMainType) {
            NotificationChain msgs = null;
            if (this.componentMainType != null) {
                msgs = ((InternalEObject)this.componentMainType).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newComponentMainType != null) {
                msgs = ((InternalEObject)newComponentMainType).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetComponentMainType(newComponentMainType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newComponentMainType, (Object)newComponentMainType));
        }
    }

    @Override
    public ComponentDataType getComponentDataType() {
        return this.componentDataType;
    }

    public NotificationChain basicSetComponentDataType(ComponentDataType newComponentDataType, NotificationChain msgs) {
        ComponentDataType oldComponentDataType = this.componentDataType;
        this.componentDataType = newComponentDataType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldComponentDataType, (Object)newComponentDataType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComponentDataType(ComponentDataType newComponentDataType) {
        if (newComponentDataType != this.componentDataType) {
            NotificationChain msgs = null;
            if (this.componentDataType != null) {
                msgs = ((InternalEObject)this.componentDataType).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newComponentDataType != null) {
                msgs = ((InternalEObject)newComponentDataType).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetComponentDataType(newComponentDataType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newComponentDataType, (Object)newComponentDataType));
        }
    }

    @Override
    public ComponentImplementationType getComponentImplementationType() {
        return this.componentImplementationType;
    }

    public NotificationChain basicSetComponentImplementationType(ComponentImplementationType newComponentImplementationType, NotificationChain msgs) {
        ComponentImplementationType oldComponentImplementationType = this.componentImplementationType;
        this.componentImplementationType = newComponentImplementationType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldComponentImplementationType, (Object)newComponentImplementationType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComponentImplementationType(ComponentImplementationType newComponentImplementationType) {
        if (newComponentImplementationType != this.componentImplementationType) {
            NotificationChain msgs = null;
            if (this.componentImplementationType != null) {
                msgs = ((InternalEObject)this.componentImplementationType).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newComponentImplementationType != null) {
                msgs = ((InternalEObject)newComponentImplementationType).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetComponentImplementationType(newComponentImplementationType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newComponentImplementationType, (Object)newComponentImplementationType));
        }
    }

    @Override
    public SpecificationsType getSpecificationsType() {
        return this.specificationsType;
    }

    public NotificationChain basicSetSpecificationsType(SpecificationsType newSpecificationsType, NotificationChain msgs) {
        SpecificationsType oldSpecificationsType = this.specificationsType;
        this.specificationsType = newSpecificationsType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldSpecificationsType, (Object)newSpecificationsType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSpecificationsType(SpecificationsType newSpecificationsType) {
        if (newSpecificationsType != this.specificationsType) {
            NotificationChain msgs = null;
            if (this.specificationsType != null) {
                msgs = ((InternalEObject)this.specificationsType).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newSpecificationsType != null) {
                msgs = ((InternalEObject)newSpecificationsType).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetSpecificationsType(newSpecificationsType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newSpecificationsType, (Object)newSpecificationsType));
        }
    }

    @Override
    public ProjectType getProjectType() {
        return this.projectType;
    }

    public NotificationChain basicSetProjectType(ProjectType newProjectType, NotificationChain msgs) {
        ProjectType oldProjectType = this.projectType;
        this.projectType = newProjectType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldProjectType, (Object)newProjectType);
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
                msgs = ((InternalEObject)this.projectType).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newProjectType != null) {
                msgs = ((InternalEObject)newProjectType).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetProjectType(newProjectType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newProjectType, (Object)newProjectType));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldImplementationsType, (Object)newImplementationsType);
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
                msgs = ((InternalEObject)this.implementationsType).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newImplementationsType != null) {
                msgs = ((InternalEObject)newImplementationsType).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetImplementationsType(newImplementationsType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newImplementationsType, (Object)newImplementationsType));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFormulasType, (Object)newFormulasType);
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
                msgs = ((InternalEObject)this.formulasType).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newFormulasType != null) {
                msgs = ((InternalEObject)newFormulasType).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetFormulasType(newFormulasType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newFormulasType, (Object)newFormulasType));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetComponentMainType(null, msgs);
            }
            case 1: {
                return this.basicSetComponentDataType(null, msgs);
            }
            case 2: {
                return this.basicSetComponentImplementationType(null, msgs);
            }
            case 3: {
                return this.basicSetSpecificationsType(null, msgs);
            }
            case 4: {
                return this.basicSetProjectType(null, msgs);
            }
            case 5: {
                return this.basicSetImplementationsType(null, msgs);
            }
            case 6: {
                return this.basicSetFormulasType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getComponentMainType();
            }
            case 1: {
                return this.getComponentDataType();
            }
            case 2: {
                return this.getComponentImplementationType();
            }
            case 3: {
                return this.getSpecificationsType();
            }
            case 4: {
                return this.getProjectType();
            }
            case 5: {
                return this.getImplementationsType();
            }
            case 6: {
                return this.getFormulasType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setComponentMainType((ComponentMainType)newValue);
                return;
            }
            case 1: {
                this.setComponentDataType((ComponentDataType)newValue);
                return;
            }
            case 2: {
                this.setComponentImplementationType((ComponentImplementationType)newValue);
                return;
            }
            case 3: {
                this.setSpecificationsType((SpecificationsType)newValue);
                return;
            }
            case 4: {
                this.setProjectType((ProjectType)newValue);
                return;
            }
            case 5: {
                this.setImplementationsType((ImplementationTypesType)newValue);
                return;
            }
            case 6: {
                this.setFormulasType((FormulasType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setComponentMainType(null);
                return;
            }
            case 1: {
                this.setComponentDataType(null);
                return;
            }
            case 2: {
                this.setComponentImplementationType(null);
                return;
            }
            case 3: {
                this.setSpecificationsType(null);
                return;
            }
            case 4: {
                this.setProjectType(null);
                return;
            }
            case 5: {
                this.setImplementationsType(null);
                return;
            }
            case 6: {
                this.setFormulasType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.componentMainType != null;
            }
            case 1: {
                return this.componentDataType != null;
            }
            case 2: {
                return this.componentImplementationType != null;
            }
            case 3: {
                return this.specificationsType != null;
            }
            case 4: {
                return this.projectType != null;
            }
            case 5: {
                return this.implementationsType != null;
            }
            case 6: {
                return this.formulasType != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

