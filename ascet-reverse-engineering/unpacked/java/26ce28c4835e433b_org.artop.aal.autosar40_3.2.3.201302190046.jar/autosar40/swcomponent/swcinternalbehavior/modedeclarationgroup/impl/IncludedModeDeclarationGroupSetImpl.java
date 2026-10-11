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
package autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.IncludedModeDeclarationGroupSet;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
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
public class IncludedModeDeclarationGroupSetImpl
extends ARObjectImpl
implements IncludedModeDeclarationGroupSet,
IReferringClass {
    protected EList<ModeDeclarationGroup> modeDeclarationGroups;
    protected static final String PREFIX_EDEFAULT = "";
    protected String prefix = "";
    protected boolean prefixESet;

    protected IncludedModeDeclarationGroupSetImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ModedeclarationgroupPackage.Literals.INCLUDED_MODE_DECLARATION_GROUP_SET;
    }

    @Override
    public SwcInternalBehavior getSwcInternalBehavior() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwcInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcInternalBehavior, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior) {
        if (newSwcInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwcInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcInternalBehavior != null) {
                msgs = ((InternalEObject)newSwcInternalBehavior).eInverseAdd((InternalEObject)this, 37, SwcInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetSwcInternalBehavior(newSwcInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwcInternalBehavior, (Object)newSwcInternalBehavior));
        }
    }

    @Override
    public EList<ModeDeclarationGroup> getModeDeclarationGroups() {
        if (this.modeDeclarationGroups == null) {
            this.modeDeclarationGroups = new EObjectResolvingReferringEList(ModeDeclarationGroup.class, (InternalEObject)this, 5);
        }
        return this.modeDeclarationGroups;
    }

    @Override
    public String getPrefix() {
        return this.prefix;
    }

    @Override
    public void setPrefix(String newPrefix) {
        String oldPrefix = this.prefix;
        this.prefix = newPrefix;
        boolean oldPrefixESet = this.prefixESet;
        this.prefixESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPrefix, (Object)this.prefix, !oldPrefixESet));
        }
    }

    @Override
    public void unsetPrefix() {
        String oldPrefix = this.prefix;
        boolean oldPrefixESet = this.prefixESet;
        this.prefix = PREFIX_EDEFAULT;
        this.prefixESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPrefix, (Object)PREFIX_EDEFAULT, oldPrefixESet));
        }
    }

    @Override
    public boolean isSetPrefix() {
        return this.prefixESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcInternalBehavior((SwcInternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwcInternalBehavior(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 37, SwcInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwcInternalBehavior();
            }
            case 5: {
                return this.getModeDeclarationGroups();
            }
            case 6: {
                return this.getPrefix();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwcInternalBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 5: {
                this.getModeDeclarationGroups().clear();
                this.getModeDeclarationGroups().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setPrefix((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwcInternalBehavior(null);
                return;
            }
            case 5: {
                this.getModeDeclarationGroups().clear();
                return;
            }
            case 6: {
                this.unsetPrefix();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwcInternalBehavior() != null;
            }
            case 5: {
                return this.modeDeclarationGroups != null && !this.modeDeclarationGroups.isEmpty();
            }
            case 6: {
                return this.isSetPrefix();
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (prefix: ");
        if (this.prefixESet) {
            result.append(this.prefix);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

