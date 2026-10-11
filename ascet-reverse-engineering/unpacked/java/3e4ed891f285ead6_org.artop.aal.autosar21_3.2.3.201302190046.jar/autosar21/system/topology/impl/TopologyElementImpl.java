/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.system.topology.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.topology.SystemTopologyType;
import autosar21.system.topology.TopologyElement;
import autosar21.system.topology.TopologyPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TopologyElementImpl
extends IdentifiableImpl
implements TopologyElement,
IReferringClass {
    protected EList<TopologyElement> childs;
    protected TopologyElement parent;

    protected TopologyElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TopologyPackage.Literals.TOPOLOGY_ELEMENT;
    }

    @Override
    public SystemTopologyType getSystemTopologyType() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (SystemTopologyType)this.eContainer();
    }

    public NotificationChain basicSetSystemTopologyType(SystemTopologyType newSystemTopologyType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystemTopologyType, 16, msgs);
        return msgs;
    }

    @Override
    public void setSystemTopologyType(SystemTopologyType newSystemTopologyType) {
        if (newSystemTopologyType != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newSystemTopologyType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystemTopologyType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystemTopologyType != null) {
                msgs = ((InternalEObject)newSystemTopologyType).eInverseAdd((InternalEObject)this, 19, SystemTopologyType.class, msgs);
            }
            if ((msgs = this.basicSetSystemTopologyType(newSystemTopologyType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSystemTopologyType, (Object)newSystemTopologyType));
        }
    }

    @Override
    public EList<TopologyElement> getChilds() {
        if (this.childs == null) {
            this.childs = new EObjectResolvingReferringEList(TopologyElement.class, (InternalEObject)this, 17);
        }
        return this.childs;
    }

    @Override
    public TopologyElement getParent() {
        if (this.parent != null && this.parent.eIsProxy()) {
            InternalEObject oldParent = (InternalEObject)this.parent;
            this.parent = (TopologyElement)this.eResolveProxy(oldParent);
            if (this.parent != oldParent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldParent, (Object)this.parent));
            }
        }
        return this.parent;
    }

    public TopologyElement basicGetParent() {
        return this.parent;
    }

    @Override
    public void setParent(TopologyElement newParent) {
        TopologyElement oldParent = this.parent;
        this.parent = newParent;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldParent, (Object)this.parent));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemTopologyType((SystemTopologyType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetSystemTopologyType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, SystemTopologyType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getSystemTopologyType();
            }
            case 17: {
                return this.getChilds();
            }
            case 18: {
                if (resolve) {
                    return this.getParent();
                }
                return this.basicGetParent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setSystemTopologyType((SystemTopologyType)newValue);
                return;
            }
            case 17: {
                this.getChilds().clear();
                this.getChilds().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.setParent((TopologyElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setSystemTopologyType(null);
                return;
            }
            case 17: {
                this.getChilds().clear();
                return;
            }
            case 18: {
                this.setParent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getSystemTopologyType() != null;
            }
            case 17: {
                return this.childs != null && !this.childs.isEmpty();
            }
            case 18: {
                return this.parent != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

