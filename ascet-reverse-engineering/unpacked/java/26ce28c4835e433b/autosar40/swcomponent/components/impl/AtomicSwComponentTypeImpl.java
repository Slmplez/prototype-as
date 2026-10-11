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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.components.impl;

import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.SymbolProps;
import autosar40.swcomponent.components.impl.SwComponentTypeImpl;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AtomicSwComponentTypeImpl
extends SwComponentTypeImpl
implements AtomicSwComponentType {
    protected EList<SwcInternalBehavior> internalBehaviors;
    protected SymbolProps symbolProps;

    protected AtomicSwComponentTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.ATOMIC_SW_COMPONENT_TYPE;
    }

    @Override
    public EList<SwcInternalBehavior> getInternalBehaviors() {
        if (this.internalBehaviors == null) {
            this.internalBehaviors = new EObjectContainmentWithInverseEList(SwcInternalBehavior.class, (InternalEObject)this, 26, 30);
        }
        return this.internalBehaviors;
    }

    @Override
    public SymbolProps getSymbolProps() {
        return this.symbolProps;
    }

    public NotificationChain basicSetSymbolProps(SymbolProps newSymbolProps, NotificationChain msgs) {
        SymbolProps oldSymbolProps = this.symbolProps;
        this.symbolProps = newSymbolProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldSymbolProps, (Object)newSymbolProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSymbolProps(SymbolProps newSymbolProps) {
        if (newSymbolProps != this.symbolProps) {
            NotificationChain msgs = null;
            if (this.symbolProps != null) {
                msgs = ((InternalEObject)this.symbolProps).eInverseRemove((InternalEObject)this, -28, null, msgs);
            }
            if (newSymbolProps != null) {
                msgs = ((InternalEObject)newSymbolProps).eInverseAdd((InternalEObject)this, -28, null, msgs);
            }
            if ((msgs = this.basicSetSymbolProps(newSymbolProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newSymbolProps, (Object)newSymbolProps));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return ((InternalEList)this.getInternalBehaviors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return ((InternalEList)this.getInternalBehaviors()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return this.basicSetSymbolProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getInternalBehaviors();
            }
            case 27: {
                return this.getSymbolProps();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.getInternalBehaviors().clear();
                this.getInternalBehaviors().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.setSymbolProps((SymbolProps)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.getInternalBehaviors().clear();
                return;
            }
            case 27: {
                this.setSymbolProps(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.internalBehaviors != null && !this.internalBehaviors.isEmpty();
            }
            case 27: {
                return this.symbolProps != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

