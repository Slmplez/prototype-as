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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.auxillaryobjects.impl;

import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroup;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutV;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwRecordLayoutGroupContentImpl
extends ARObjectImpl
implements SwRecordLayoutGroupContent,
IReferringClass {
    protected EList<SwRecordLayout> swRecordLayouts;
    protected EList<SwRecordLayoutV> swRecordLayoutVs;
    protected EList<SwRecordLayoutGroup> swRecordLayoutGroups;

    protected SwRecordLayoutGroupContentImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AuxillaryobjectsPackage.Literals.SW_RECORD_LAYOUT_GROUP_CONTENT;
    }

    @Override
    public SwRecordLayoutGroup getSwRecordLayoutGroup() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwRecordLayoutGroup)this.eContainer();
    }

    public NotificationChain basicSetSwRecordLayoutGroup(SwRecordLayoutGroup newSwRecordLayoutGroup, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwRecordLayoutGroup, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwRecordLayoutGroup(SwRecordLayoutGroup newSwRecordLayoutGroup) {
        if (newSwRecordLayoutGroup != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwRecordLayoutGroup != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwRecordLayoutGroup)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwRecordLayoutGroup != null) {
                msgs = ((InternalEObject)newSwRecordLayoutGroup).eInverseAdd((InternalEObject)this, 10, SwRecordLayoutGroup.class, msgs);
            }
            if ((msgs = this.basicSetSwRecordLayoutGroup(newSwRecordLayoutGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwRecordLayoutGroup, (Object)newSwRecordLayoutGroup));
        }
    }

    @Override
    public EList<SwRecordLayout> getSwRecordLayouts() {
        if (this.swRecordLayouts == null) {
            this.swRecordLayouts = new EObjectResolvingReferringEList(SwRecordLayout.class, (InternalEObject)this, 5);
        }
        return this.swRecordLayouts;
    }

    @Override
    public EList<SwRecordLayoutV> getSwRecordLayoutVs() {
        if (this.swRecordLayoutVs == null) {
            this.swRecordLayoutVs = new EObjectContainmentWithInverseEList(SwRecordLayoutV.class, (InternalEObject)this, 6, 4);
        }
        return this.swRecordLayoutVs;
    }

    @Override
    public EList<SwRecordLayoutGroup> getSwRecordLayoutGroups() {
        if (this.swRecordLayoutGroups == null) {
            this.swRecordLayoutGroups = new EObjectContainmentEList(SwRecordLayoutGroup.class, (InternalEObject)this, 7);
        }
        return this.swRecordLayoutGroups;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwRecordLayoutGroup((SwRecordLayoutGroup)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSwRecordLayoutVs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwRecordLayoutGroup(null, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSwRecordLayoutVs()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getSwRecordLayoutGroups()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, SwRecordLayoutGroup.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwRecordLayoutGroup();
            }
            case 5: {
                return this.getSwRecordLayouts();
            }
            case 6: {
                return this.getSwRecordLayoutVs();
            }
            case 7: {
                return this.getSwRecordLayoutGroups();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwRecordLayoutGroup((SwRecordLayoutGroup)newValue);
                return;
            }
            case 5: {
                this.getSwRecordLayouts().clear();
                this.getSwRecordLayouts().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getSwRecordLayoutVs().clear();
                this.getSwRecordLayoutVs().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getSwRecordLayoutGroups().clear();
                this.getSwRecordLayoutGroups().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwRecordLayoutGroup(null);
                return;
            }
            case 5: {
                this.getSwRecordLayouts().clear();
                return;
            }
            case 6: {
                this.getSwRecordLayoutVs().clear();
                return;
            }
            case 7: {
                this.getSwRecordLayoutGroups().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwRecordLayoutGroup() != null;
            }
            case 5: {
                return this.swRecordLayouts != null && !this.swRecordLayouts.isEmpty();
            }
            case 6: {
                return this.swRecordLayoutVs != null && !this.swRecordLayoutVs.isEmpty();
            }
            case 7: {
                return this.swRecordLayoutGroups != null && !this.swRecordLayoutGroups.isEmpty();
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

