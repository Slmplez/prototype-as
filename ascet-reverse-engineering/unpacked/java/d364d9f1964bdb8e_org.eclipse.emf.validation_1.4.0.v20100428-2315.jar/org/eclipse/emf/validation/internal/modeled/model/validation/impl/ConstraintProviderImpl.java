/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintProvider;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraints;
import org.eclipse.emf.validation.internal.modeled.model.validation.ModeEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.Target;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstraintProviderImpl
extends EObjectImpl
implements ConstraintProvider {
    protected static final boolean CACHE_EDEFAULT = false;
    protected boolean cache = false;
    protected static final String DESCRIPTION_EDEFAULT = null;
    protected String description = DESCRIPTION_EDEFAULT;
    protected EList<Target> target;
    protected static final ModeEnum MODE_EDEFAULT = ModeEnum.BATCH;
    protected ModeEnum mode = MODE_EDEFAULT;
    protected static final String CLASS_NAME_EDEFAULT = null;
    protected String className = CLASS_NAME_EDEFAULT;
    protected EList<Constraints> constraints;
    protected EList<EPackage> package_;
    protected static final String PLUGIN_ID_EDEFAULT = null;
    protected String pluginId = PLUGIN_ID_EDEFAULT;

    protected ConstraintProviderImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.CONSTRAINT_PROVIDER;
    }

    @Override
    public boolean isCache() {
        return this.cache;
    }

    @Override
    public void setCache(boolean newCache) {
        boolean oldCache = this.cache;
        this.cache = newCache;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, oldCache, this.cache));
        }
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public void setDescription(String newDescription) {
        String oldDescription = this.description;
        this.description = newDescription;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDescription, (Object)this.description));
        }
    }

    @Override
    public EList<Target> getTarget() {
        if (this.target == null) {
            this.target = new EObjectContainmentEList(Target.class, (InternalEObject)this, 2);
        }
        return this.target;
    }

    @Override
    public ModeEnum getMode() {
        return this.mode;
    }

    @Override
    public void setMode(ModeEnum newMode) {
        ModeEnum oldMode = this.mode;
        ModeEnum modeEnum = this.mode = newMode == null ? MODE_EDEFAULT : newMode;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldMode, (Object)this.mode));
        }
    }

    @Override
    public String getClassName() {
        return this.className;
    }

    @Override
    public void setClassName(String newClassName) {
        String oldClassName = this.className;
        this.className = newClassName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldClassName, (Object)this.className));
        }
    }

    @Override
    public EList<Constraints> getConstraints() {
        if (this.constraints == null) {
            this.constraints = new EObjectContainmentEList(Constraints.class, (InternalEObject)this, 5);
        }
        return this.constraints;
    }

    @Override
    public EList<EPackage> getPackage() {
        if (this.package_ == null) {
            this.package_ = new EObjectResolvingEList(EPackage.class, (InternalEObject)this, 6);
        }
        return this.package_;
    }

    @Override
    public String getPluginId() {
        return this.pluginId;
    }

    @Override
    public void setPluginId(String newPluginId) {
        String oldPluginId = this.pluginId;
        this.pluginId = newPluginId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldPluginId, (Object)this.pluginId));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 2: {
                return ((InternalEList)this.getTarget()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getConstraints()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.isCache();
            }
            case 1: {
                return this.getDescription();
            }
            case 2: {
                return this.getTarget();
            }
            case 3: {
                return this.getMode();
            }
            case 4: {
                return this.getClassName();
            }
            case 5: {
                return this.getConstraints();
            }
            case 6: {
                return this.getPackage();
            }
            case 7: {
                return this.getPluginId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setCache((Boolean)newValue);
                return;
            }
            case 1: {
                this.setDescription((String)newValue);
                return;
            }
            case 2: {
                this.getTarget().clear();
                this.getTarget().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.setMode((ModeEnum)((Object)newValue));
                return;
            }
            case 4: {
                this.setClassName((String)newValue);
                return;
            }
            case 5: {
                this.getConstraints().clear();
                this.getConstraints().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getPackage().clear();
                this.getPackage().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setPluginId((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setCache(false);
                return;
            }
            case 1: {
                this.setDescription(DESCRIPTION_EDEFAULT);
                return;
            }
            case 2: {
                this.getTarget().clear();
                return;
            }
            case 3: {
                this.setMode(MODE_EDEFAULT);
                return;
            }
            case 4: {
                this.setClassName(CLASS_NAME_EDEFAULT);
                return;
            }
            case 5: {
                this.getConstraints().clear();
                return;
            }
            case 6: {
                this.getPackage().clear();
                return;
            }
            case 7: {
                this.setPluginId(PLUGIN_ID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.cache;
            }
            case 1: {
                return DESCRIPTION_EDEFAULT == null ? this.description != null : !DESCRIPTION_EDEFAULT.equals(this.description);
            }
            case 2: {
                return this.target != null && !this.target.isEmpty();
            }
            case 3: {
                return this.mode != MODE_EDEFAULT;
            }
            case 4: {
                return CLASS_NAME_EDEFAULT == null ? this.className != null : !CLASS_NAME_EDEFAULT.equals(this.className);
            }
            case 5: {
                return this.constraints != null && !this.constraints.isEmpty();
            }
            case 6: {
                return this.package_ != null && !this.package_.isEmpty();
            }
            case 7: {
                return PLUGIN_ID_EDEFAULT == null ? this.pluginId != null : !PLUGIN_ID_EDEFAULT.equals(this.pluginId);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (cache: ");
        result.append(this.cache);
        result.append(", description: ");
        result.append(this.description);
        result.append(", mode: ");
        result.append((Object)this.mode);
        result.append(", className: ");
        result.append(this.className);
        result.append(", pluginId: ");
        result.append(this.pluginId);
        result.append(')');
        return result.toString();
    }
}

