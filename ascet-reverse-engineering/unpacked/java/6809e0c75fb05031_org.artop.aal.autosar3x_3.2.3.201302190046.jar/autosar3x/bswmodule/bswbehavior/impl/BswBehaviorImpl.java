/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.bswmodule.bswbehavior.impl;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswbehavior.BswEvent;
import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswBehaviorImpl
extends ARElementImpl
implements BswBehavior,
IReferringClass {
    protected EList<BswModuleEntity> entities;
    protected EList<BswEvent> events;
    protected EList<ExclusiveArea> exclusiveAreas;
    protected BswModuleDescription module;

    protected BswBehaviorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_BEHAVIOR;
    }

    @Override
    public EList<BswModuleEntity> getEntities() {
        if (this.entities == null) {
            this.entities = new EObjectContainmentWithInverseEList(BswModuleEntity.class, (InternalEObject)this, 19, 17);
        }
        return this.entities;
    }

    @Override
    public EList<BswEvent> getEvents() {
        if (this.events == null) {
            this.events = new EObjectContainmentWithInverseEList(BswEvent.class, (InternalEObject)this, 20, 17);
        }
        return this.events;
    }

    @Override
    public EList<ExclusiveArea> getExclusiveAreas() {
        if (this.exclusiveAreas == null) {
            this.exclusiveAreas = new EObjectContainmentEList(ExclusiveArea.class, (InternalEObject)this, 21);
        }
        return this.exclusiveAreas;
    }

    @Override
    public BswModuleDescription getModule() {
        if (this.module != null && this.module.eIsProxy()) {
            InternalEObject oldModule = (InternalEObject)this.module;
            this.module = (BswModuleDescription)this.eResolveProxy(oldModule);
            if (this.module != oldModule && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldModule, (Object)this.module));
            }
        }
        return this.module;
    }

    public BswModuleDescription basicGetModule() {
        return this.module;
    }

    @Override
    public void setModule(BswModuleDescription newModule) {
        BswModuleDescription oldModule = this.module;
        this.module = newModule;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldModule, (Object)this.module));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getEntities()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getEvents()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getEntities()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getEvents()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getExclusiveAreas()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getEntities();
            }
            case 20: {
                return this.getEvents();
            }
            case 21: {
                return this.getExclusiveAreas();
            }
            case 22: {
                if (resolve) {
                    return this.getModule();
                }
                return this.basicGetModule();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getEntities().clear();
                this.getEntities().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getEvents().clear();
                this.getEvents().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getExclusiveAreas().clear();
                this.getExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setModule((BswModuleDescription)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getEntities().clear();
                return;
            }
            case 20: {
                this.getEvents().clear();
                return;
            }
            case 21: {
                this.getExclusiveAreas().clear();
                return;
            }
            case 22: {
                this.setModule(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.entities != null && !this.entities.isEmpty();
            }
            case 20: {
                return this.events != null && !this.events.isEmpty();
            }
            case 21: {
                return this.exclusiveAreas != null && !this.exclusiveAreas.isEmpty();
            }
            case 22: {
                return this.module != null;
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

