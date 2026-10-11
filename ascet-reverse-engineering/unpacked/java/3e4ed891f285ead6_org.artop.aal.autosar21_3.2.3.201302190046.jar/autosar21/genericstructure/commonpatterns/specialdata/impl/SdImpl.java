/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 */
package autosar21.genericstructure.commonpatterns.specialdata.impl;

import autosar21.genericstructure.commonpatterns.specialdata.Sd;
import autosar21.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.sphinx.emf.util.EObjectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SdImpl
extends ARObjectImpl
implements Sd {
    protected FeatureMap mixed;
    protected static final String GID_EDEFAULT = "";
    protected String gid = "";
    protected boolean gidESet;
    protected EList<String> idClass;

    protected SdImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SpecialdataPackage.Literals.SD;
    }

    @Override
    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap((InternalEObject)this, 4);
        }
        return this.mixed;
    }

    @Override
    public void unsetMixed() {
        if (this.mixed != null) {
            ((InternalEList.Unsettable)this.mixed).unset();
        }
    }

    @Override
    public boolean isSetMixed() {
        return this.mixed != null && ((InternalEList.Unsettable)this.mixed).isSet();
    }

    @Override
    public SdgContents getSdgContents() {
        return (SdgContents)this.getMixed().get((EStructuralFeature)SpecialdataPackage.Literals.SD__SDG_CONTENTS, true);
    }

    @Override
    public void setSdgContents(SdgContents newSdgContents) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)SpecialdataPackage.Literals.SD__SDG_CONTENTS, (Object)newSdgContents);
    }

    @Override
    public String getGid() {
        return this.gid;
    }

    @Override
    public void setGid(String newGid) {
        String oldGid = this.gid;
        this.gid = newGid;
        boolean oldGidESet = this.gidESet;
        this.gidESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldGid, (Object)this.gid, !oldGidESet));
        }
    }

    @Override
    public void unsetGid() {
        String oldGid = this.gid;
        boolean oldGidESet = this.gidESet;
        this.gid = GID_EDEFAULT;
        this.gidESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldGid, (Object)GID_EDEFAULT, oldGidESet));
        }
    }

    @Override
    public boolean isSetGid() {
        return this.gidESet;
    }

    @Override
    public EList<String> getIdClass() {
        if (this.idClass == null) {
            this.idClass = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 7);
        }
        return this.idClass;
    }

    @Override
    public void unsetIdClass() {
        if (this.idClass != null) {
            ((InternalEList.Unsettable)this.idClass).unset();
        }
    }

    @Override
    public boolean isSetIdClass() {
        return this.idClass != null && ((InternalEList.Unsettable)this.idClass).isSet();
    }

    @Override
    public String getMixedText() {
        return EObjectUtil.getMixedText((FeatureMap)this.getMixed());
    }

    @Override
    public void setMixedText(String text) {
        EObjectUtil.setMixedText((FeatureMap)this.getMixed(), (String)text);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 5, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getMixed()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return this.eBasicSetContainer(null, 5, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, SdgContents.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 5: {
                return this.getSdgContents();
            }
            case 6: {
                return this.getGid();
            }
            case 7: {
                return this.getIdClass();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 5: {
                this.setSdgContents((SdgContents)newValue);
                return;
            }
            case 6: {
                this.setGid((String)newValue);
                return;
            }
            case 7: {
                this.getIdClass().clear();
                this.getIdClass().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMixed();
                return;
            }
            case 5: {
                this.setSdgContents(null);
                return;
            }
            case 6: {
                this.unsetGid();
                return;
            }
            case 7: {
                this.unsetIdClass();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMixed();
            }
            case 5: {
                return this.getSdgContents() != null;
            }
            case 6: {
                return this.isSetGid();
            }
            case 7: {
                return this.isSetIdClass();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(", gid: ");
        if (this.gidESet) {
            result.append(this.gid);
        } else {
            result.append("<unset>");
        }
        result.append(", idClass: ");
        result.append(this.idClass);
        result.append(')');
        return result.toString();
    }
}

