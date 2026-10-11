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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.bswmodule.bswoverview.impl;

import autosar3x.bswmodule.bswinterfaces.BswModuleDependency;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.bswmodule.bswoverview.BswoverviewPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswModuleDescriptionImpl
extends ARElementImpl
implements BswModuleDescription,
IReferringClass {
    protected EList<BswModuleDependency> bswModuleDependencies;
    protected static final Integer MODULE_ID_EDEFAULT = new Integer(0);
    protected Integer moduleId = MODULE_ID_EDEFAULT;
    protected boolean moduleIdESet;
    protected EList<BswModuleEntry> outgoingCallbacks;
    protected EList<BswModuleEntry> providedEntries;

    protected BswModuleDescriptionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswoverviewPackage.Literals.BSW_MODULE_DESCRIPTION;
    }

    @Override
    public EList<BswModuleDependency> getBswModuleDependencies() {
        if (this.bswModuleDependencies == null) {
            this.bswModuleDependencies = new EObjectContainmentWithInverseEList(BswModuleDependency.class, (InternalEObject)this, 19, 17);
        }
        return this.bswModuleDependencies;
    }

    @Override
    public Integer getModuleId() {
        return this.moduleId;
    }

    @Override
    public void setModuleId(Integer newModuleId) {
        Integer oldModuleId = this.moduleId;
        this.moduleId = newModuleId;
        boolean oldModuleIdESet = this.moduleIdESet;
        this.moduleIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldModuleId, (Object)this.moduleId, !oldModuleIdESet));
        }
    }

    @Override
    public void unsetModuleId() {
        Integer oldModuleId = this.moduleId;
        boolean oldModuleIdESet = this.moduleIdESet;
        this.moduleId = MODULE_ID_EDEFAULT;
        this.moduleIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldModuleId, (Object)MODULE_ID_EDEFAULT, oldModuleIdESet));
        }
    }

    @Override
    public boolean isSetModuleId() {
        return this.moduleIdESet;
    }

    @Override
    public EList<BswModuleEntry> getOutgoingCallbacks() {
        if (this.outgoingCallbacks == null) {
            this.outgoingCallbacks = new EObjectResolvingReferringEList(BswModuleEntry.class, (InternalEObject)this, 21);
        }
        return this.outgoingCallbacks;
    }

    @Override
    public EList<BswModuleEntry> getProvidedEntries() {
        if (this.providedEntries == null) {
            this.providedEntries = new EObjectResolvingReferringEList(BswModuleEntry.class, (InternalEObject)this, 22);
        }
        return this.providedEntries;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getBswModuleDependencies()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getBswModuleDependencies()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getBswModuleDependencies();
            }
            case 20: {
                return this.getModuleId();
            }
            case 21: {
                return this.getOutgoingCallbacks();
            }
            case 22: {
                return this.getProvidedEntries();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getBswModuleDependencies().clear();
                this.getBswModuleDependencies().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setModuleId((Integer)newValue);
                return;
            }
            case 21: {
                this.getOutgoingCallbacks().clear();
                this.getOutgoingCallbacks().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getProvidedEntries().clear();
                this.getProvidedEntries().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getBswModuleDependencies().clear();
                return;
            }
            case 20: {
                this.unsetModuleId();
                return;
            }
            case 21: {
                this.getOutgoingCallbacks().clear();
                return;
            }
            case 22: {
                this.getProvidedEntries().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.bswModuleDependencies != null && !this.bswModuleDependencies.isEmpty();
            }
            case 20: {
                return this.isSetModuleId();
            }
            case 21: {
                return this.outgoingCallbacks != null && !this.outgoingCallbacks.isEmpty();
            }
            case 22: {
                return this.providedEntries != null && !this.providedEntries.isEmpty();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (moduleId: ");
        if (this.moduleIdESet) {
            result.append(this.moduleId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

