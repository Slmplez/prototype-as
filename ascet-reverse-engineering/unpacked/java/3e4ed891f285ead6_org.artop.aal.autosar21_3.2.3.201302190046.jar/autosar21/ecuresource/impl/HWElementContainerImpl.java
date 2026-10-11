/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.ecuresource.impl;

import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWConnection;
import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWElementContainer;
import autosar21.ecuresource.impl.HWElementImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class HWElementContainerImpl
extends HWElementImpl
implements HWElementContainer {
    protected EList<HWConnection> connections;
    protected EList<HWElement> containedElements;

    protected HWElementContainerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_ELEMENT_CONTAINER;
    }

    @Override
    public EList<HWConnection> getConnections() {
        if (this.connections == null) {
            this.connections = new EObjectContainmentWithInverseEList(HWConnection.class, (InternalEObject)this, 25, 16);
        }
        return this.connections;
    }

    @Override
    public EList<HWElement> getContainedElements() {
        if (this.containedElements == null) {
            this.containedElements = new EObjectContainmentWithInverseEList(HWElement.class, (InternalEObject)this, 26, 18);
        }
        return this.containedElements;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getConnections()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getContainedElements()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getConnections()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getContainedElements()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.getConnections();
            }
            case 26: {
                return this.getContainedElements();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.getConnections().clear();
                this.getConnections().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getContainedElements().clear();
                this.getContainedElements().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.getConnections().clear();
                return;
            }
            case 26: {
                this.getContainedElements().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return this.connections != null && !this.connections.isEmpty();
            }
            case 26: {
                return this.containedElements != null && !this.containedElements.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

