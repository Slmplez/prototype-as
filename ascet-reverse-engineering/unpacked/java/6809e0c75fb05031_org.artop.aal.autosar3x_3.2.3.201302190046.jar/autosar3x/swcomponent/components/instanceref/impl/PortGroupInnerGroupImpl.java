/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.components.instanceref.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.components.PortGroup;
import autosar3x.swcomponent.components.instanceref.InstancerefPackage;
import autosar3x.swcomponent.components.instanceref.PortGroupInnerGroup;
import autosar3x.swcomponent.composition.ComponentPrototype;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortGroupInnerGroupImpl
extends ARObjectImpl
implements PortGroupInnerGroup,
IReferringClass {
    protected EList<ComponentPrototype> componentPrototypes;
    protected PortGroup portGroup;

    protected PortGroupInnerGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.PORT_GROUP_INNER_GROUP;
    }

    @Override
    public EList<ComponentPrototype> getComponentPrototypes() {
        if (this.componentPrototypes == null) {
            this.componentPrototypes = new EObjectResolvingReferringEList(ComponentPrototype.class, (InternalEObject)this, 4);
        }
        return this.componentPrototypes;
    }

    @Override
    public PortGroup getPortGroup() {
        if (this.portGroup != null && this.portGroup.eIsProxy()) {
            InternalEObject oldPortGroup = (InternalEObject)this.portGroup;
            this.portGroup = (PortGroup)this.eResolveProxy(oldPortGroup);
            if (this.portGroup != oldPortGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldPortGroup, (Object)this.portGroup));
            }
        }
        return this.portGroup;
    }

    public PortGroup basicGetPortGroup() {
        return this.portGroup;
    }

    @Override
    public void setPortGroup(PortGroup newPortGroup) {
        PortGroup oldPortGroup = this.portGroup;
        this.portGroup = newPortGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPortGroup, (Object)this.portGroup));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getComponentPrototypes();
            }
            case 5: {
                if (resolve) {
                    return this.getPortGroup();
                }
                return this.basicGetPortGroup();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getComponentPrototypes().clear();
                this.getComponentPrototypes().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.setPortGroup((PortGroup)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getComponentPrototypes().clear();
                return;
            }
            case 5: {
                this.setPortGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.componentPrototypes != null && !this.componentPrototypes.isEmpty();
            }
            case 5: {
                return this.portGroup != null;
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

