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
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ImplementationCastImplementationType;
import com.etas.amd620.core.ComponentImplementation.LogicImplementationT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationType;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentImplementation.TemplateImplementationT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ScalarImplementationTImpl
extends MinimalEObjectImpl.Container
implements ScalarImplementationT {
    protected PrimitiveImplementationT enumerationImplementation;
    protected NumericImplementationT numericImplementation;
    protected LogicImplementationT logicImplementation;
    protected TemplateImplementationT templateImplementation;
    protected ResourceImplementationType resourceImplementation;
    protected ImplementationCastImplementationType implementationCastImplementation;

    protected ScalarImplementationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.SCALAR_IMPLEMENTATION_T;
    }

    @Override
    public PrimitiveImplementationT getEnumerationImplementation() {
        return this.enumerationImplementation;
    }

    public NotificationChain basicSetEnumerationImplementation(PrimitiveImplementationT newEnumerationImplementation, NotificationChain msgs) {
        PrimitiveImplementationT oldEnumerationImplementation = this.enumerationImplementation;
        this.enumerationImplementation = newEnumerationImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldEnumerationImplementation, (Object)newEnumerationImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEnumerationImplementation(PrimitiveImplementationT newEnumerationImplementation) {
        if (newEnumerationImplementation != this.enumerationImplementation) {
            NotificationChain msgs = null;
            if (this.enumerationImplementation != null) {
                msgs = ((InternalEObject)this.enumerationImplementation).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newEnumerationImplementation != null) {
                msgs = ((InternalEObject)newEnumerationImplementation).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetEnumerationImplementation(newEnumerationImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newEnumerationImplementation, (Object)newEnumerationImplementation));
        }
    }

    @Override
    public NumericImplementationT getNumericImplementation() {
        return this.numericImplementation;
    }

    public NotificationChain basicSetNumericImplementation(NumericImplementationT newNumericImplementation, NotificationChain msgs) {
        NumericImplementationT oldNumericImplementation = this.numericImplementation;
        this.numericImplementation = newNumericImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldNumericImplementation, (Object)newNumericImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setNumericImplementation(NumericImplementationT newNumericImplementation) {
        if (newNumericImplementation != this.numericImplementation) {
            NotificationChain msgs = null;
            if (this.numericImplementation != null) {
                msgs = ((InternalEObject)this.numericImplementation).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newNumericImplementation != null) {
                msgs = ((InternalEObject)newNumericImplementation).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetNumericImplementation(newNumericImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newNumericImplementation, (Object)newNumericImplementation));
        }
    }

    @Override
    public LogicImplementationT getLogicImplementation() {
        return this.logicImplementation;
    }

    public NotificationChain basicSetLogicImplementation(LogicImplementationT newLogicImplementation, NotificationChain msgs) {
        LogicImplementationT oldLogicImplementation = this.logicImplementation;
        this.logicImplementation = newLogicImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldLogicImplementation, (Object)newLogicImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLogicImplementation(LogicImplementationT newLogicImplementation) {
        if (newLogicImplementation != this.logicImplementation) {
            NotificationChain msgs = null;
            if (this.logicImplementation != null) {
                msgs = ((InternalEObject)this.logicImplementation).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newLogicImplementation != null) {
                msgs = ((InternalEObject)newLogicImplementation).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetLogicImplementation(newLogicImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newLogicImplementation, (Object)newLogicImplementation));
        }
    }

    @Override
    public TemplateImplementationT getTemplateImplementation() {
        return this.templateImplementation;
    }

    public NotificationChain basicSetTemplateImplementation(TemplateImplementationT newTemplateImplementation, NotificationChain msgs) {
        TemplateImplementationT oldTemplateImplementation = this.templateImplementation;
        this.templateImplementation = newTemplateImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldTemplateImplementation, (Object)newTemplateImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTemplateImplementation(TemplateImplementationT newTemplateImplementation) {
        if (newTemplateImplementation != this.templateImplementation) {
            NotificationChain msgs = null;
            if (this.templateImplementation != null) {
                msgs = ((InternalEObject)this.templateImplementation).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newTemplateImplementation != null) {
                msgs = ((InternalEObject)newTemplateImplementation).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetTemplateImplementation(newTemplateImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newTemplateImplementation, (Object)newTemplateImplementation));
        }
    }

    @Override
    public ResourceImplementationType getResourceImplementation() {
        return this.resourceImplementation;
    }

    public NotificationChain basicSetResourceImplementation(ResourceImplementationType newResourceImplementation, NotificationChain msgs) {
        ResourceImplementationType oldResourceImplementation = this.resourceImplementation;
        this.resourceImplementation = newResourceImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldResourceImplementation, (Object)newResourceImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setResourceImplementation(ResourceImplementationType newResourceImplementation) {
        if (newResourceImplementation != this.resourceImplementation) {
            NotificationChain msgs = null;
            if (this.resourceImplementation != null) {
                msgs = ((InternalEObject)this.resourceImplementation).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newResourceImplementation != null) {
                msgs = ((InternalEObject)newResourceImplementation).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetResourceImplementation(newResourceImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newResourceImplementation, (Object)newResourceImplementation));
        }
    }

    @Override
    public ImplementationCastImplementationType getImplementationCastImplementation() {
        return this.implementationCastImplementation;
    }

    public NotificationChain basicSetImplementationCastImplementation(ImplementationCastImplementationType newImplementationCastImplementation, NotificationChain msgs) {
        ImplementationCastImplementationType oldImplementationCastImplementation = this.implementationCastImplementation;
        this.implementationCastImplementation = newImplementationCastImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldImplementationCastImplementation, (Object)newImplementationCastImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setImplementationCastImplementation(ImplementationCastImplementationType newImplementationCastImplementation) {
        if (newImplementationCastImplementation != this.implementationCastImplementation) {
            NotificationChain msgs = null;
            if (this.implementationCastImplementation != null) {
                msgs = ((InternalEObject)this.implementationCastImplementation).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newImplementationCastImplementation != null) {
                msgs = ((InternalEObject)newImplementationCastImplementation).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetImplementationCastImplementation(newImplementationCastImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newImplementationCastImplementation, (Object)newImplementationCastImplementation));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetEnumerationImplementation(null, msgs);
            }
            case 1: {
                return this.basicSetNumericImplementation(null, msgs);
            }
            case 2: {
                return this.basicSetLogicImplementation(null, msgs);
            }
            case 3: {
                return this.basicSetTemplateImplementation(null, msgs);
            }
            case 4: {
                return this.basicSetResourceImplementation(null, msgs);
            }
            case 5: {
                return this.basicSetImplementationCastImplementation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEnumerationImplementation();
            }
            case 1: {
                return this.getNumericImplementation();
            }
            case 2: {
                return this.getLogicImplementation();
            }
            case 3: {
                return this.getTemplateImplementation();
            }
            case 4: {
                return this.getResourceImplementation();
            }
            case 5: {
                return this.getImplementationCastImplementation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setEnumerationImplementation((PrimitiveImplementationT)newValue);
                return;
            }
            case 1: {
                this.setNumericImplementation((NumericImplementationT)newValue);
                return;
            }
            case 2: {
                this.setLogicImplementation((LogicImplementationT)newValue);
                return;
            }
            case 3: {
                this.setTemplateImplementation((TemplateImplementationT)newValue);
                return;
            }
            case 4: {
                this.setResourceImplementation((ResourceImplementationType)newValue);
                return;
            }
            case 5: {
                this.setImplementationCastImplementation((ImplementationCastImplementationType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setEnumerationImplementation(null);
                return;
            }
            case 1: {
                this.setNumericImplementation(null);
                return;
            }
            case 2: {
                this.setLogicImplementation(null);
                return;
            }
            case 3: {
                this.setTemplateImplementation(null);
                return;
            }
            case 4: {
                this.setResourceImplementation(null);
                return;
            }
            case 5: {
                this.setImplementationCastImplementation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.enumerationImplementation != null;
            }
            case 1: {
                return this.numericImplementation != null;
            }
            case 2: {
                return this.logicImplementation != null;
            }
            case 3: {
                return this.templateImplementation != null;
            }
            case 4: {
                return this.resourceImplementation != null;
            }
            case 5: {
                return this.implementationCastImplementation != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

