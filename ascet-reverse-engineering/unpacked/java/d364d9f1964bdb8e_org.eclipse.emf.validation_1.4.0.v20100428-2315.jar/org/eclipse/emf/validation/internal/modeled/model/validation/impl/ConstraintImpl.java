/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature$Setting
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EcoreEMap
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EcoreEMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraint;
import org.eclipse.emf.validation.internal.modeled.model.validation.ModeEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.SeverityEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.Target;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.impl.ParameterImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ConstraintImpl
extends EObjectImpl
implements Constraint {
    protected static final String ID_EDEFAULT = null;
    protected String id = ID_EDEFAULT;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final SeverityEnum SEVERITY_EDEFAULT = SeverityEnum.INFO;
    protected SeverityEnum severity = SEVERITY_EDEFAULT;
    protected static final int STATUS_CODE_EDEFAULT = 0;
    protected int statusCode = 0;
    protected static final String CLASS_NAME_EDEFAULT = null;
    protected String className = CLASS_NAME_EDEFAULT;
    protected static final ModeEnum MODE_EDEFAULT = ModeEnum.BATCH;
    protected ModeEnum mode = MODE_EDEFAULT;
    protected static final boolean IS_ENABLED_BY_DEFAULT_EDEFAULT = true;
    protected boolean isEnabledByDefault = true;
    protected static final String DESCRIPTION_EDEFAULT = null;
    protected String description = DESCRIPTION_EDEFAULT;
    protected static final String MESSAGE_EDEFAULT = null;
    protected String message = MESSAGE_EDEFAULT;
    protected EMap<String, String> parameters;
    protected Target target;
    protected static final String LANG_EDEFAULT = null;
    protected String lang = LANG_EDEFAULT;

    protected ConstraintImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.CONSTRAINT;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public void setId(String newId) {
        String oldId = this.id;
        this.id = newId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldId, (Object)this.id));
        }
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public SeverityEnum getSeverity() {
        return this.severity;
    }

    @Override
    public void setSeverity(SeverityEnum newSeverity) {
        SeverityEnum oldSeverity = this.severity;
        SeverityEnum severityEnum = this.severity = newSeverity == null ? SEVERITY_EDEFAULT : newSeverity;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldSeverity, (Object)this.severity));
        }
    }

    @Override
    public int getStatusCode() {
        return this.statusCode;
    }

    @Override
    public void setStatusCode(int newStatusCode) {
        int oldStatusCode = this.statusCode;
        this.statusCode = newStatusCode;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, oldStatusCode, this.statusCode));
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
    public ModeEnum getMode() {
        return this.mode;
    }

    @Override
    public void setMode(ModeEnum newMode) {
        ModeEnum oldMode = this.mode;
        ModeEnum modeEnum = this.mode = newMode == null ? MODE_EDEFAULT : newMode;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMode, (Object)this.mode));
        }
    }

    @Override
    public boolean isIsEnabledByDefault() {
        return this.isEnabledByDefault;
    }

    @Override
    public void setIsEnabledByDefault(boolean newIsEnabledByDefault) {
        boolean oldIsEnabledByDefault = this.isEnabledByDefault;
        this.isEnabledByDefault = newIsEnabledByDefault;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldIsEnabledByDefault, this.isEnabledByDefault));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDescription, (Object)this.description));
        }
    }

    @Override
    public String getMessage() {
        return this.message;
    }

    @Override
    public void setMessage(String newMessage) {
        String oldMessage = this.message;
        this.message = newMessage;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldMessage, (Object)this.message));
        }
    }

    @Override
    public EMap<String, String> getParameters() {
        if (this.parameters == null) {
            this.parameters = new EcoreEMap(ValidationPackage.Literals.PARAMETER, ParameterImpl.class, (InternalEObject)this, 9);
        }
        return this.parameters;
    }

    @Override
    public Target getTarget() {
        if (this.target != null && this.target.eIsProxy()) {
            InternalEObject oldTarget = (InternalEObject)this.target;
            this.target = (Target)this.eResolveProxy(oldTarget);
            if (this.target != oldTarget && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldTarget, (Object)this.target));
            }
        }
        return this.target;
    }

    public Target basicGetTarget() {
        return this.target;
    }

    @Override
    public void setTarget(Target newTarget) {
        Target oldTarget = this.target;
        this.target = newTarget;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldTarget, (Object)this.target));
        }
    }

    @Override
    public String getLang() {
        return this.lang;
    }

    @Override
    public void setLang(String newLang) {
        String oldLang = this.lang;
        this.lang = newLang;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldLang, (Object)this.lang));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return ((InternalEList)this.getParameters()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getId();
            }
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.getSeverity();
            }
            case 3: {
                return this.getStatusCode();
            }
            case 4: {
                return this.getClassName();
            }
            case 5: {
                return this.getMode();
            }
            case 6: {
                return this.isIsEnabledByDefault();
            }
            case 7: {
                return this.getDescription();
            }
            case 8: {
                return this.getMessage();
            }
            case 9: {
                if (coreType) {
                    return this.getParameters();
                }
                return this.getParameters().map();
            }
            case 10: {
                if (resolve) {
                    return this.getTarget();
                }
                return this.basicGetTarget();
            }
            case 11: {
                return this.getLang();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setId((String)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
            case 2: {
                this.setSeverity((SeverityEnum)((Object)newValue));
                return;
            }
            case 3: {
                this.setStatusCode((Integer)newValue);
                return;
            }
            case 4: {
                this.setClassName((String)newValue);
                return;
            }
            case 5: {
                this.setMode((ModeEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setIsEnabledByDefault((Boolean)newValue);
                return;
            }
            case 7: {
                this.setDescription((String)newValue);
                return;
            }
            case 8: {
                this.setMessage((String)newValue);
                return;
            }
            case 9: {
                ((EStructuralFeature.Setting)this.getParameters()).set(newValue);
                return;
            }
            case 10: {
                this.setTarget((Target)newValue);
                return;
            }
            case 11: {
                this.setLang((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setId(ID_EDEFAULT);
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.setSeverity(SEVERITY_EDEFAULT);
                return;
            }
            case 3: {
                this.setStatusCode(0);
                return;
            }
            case 4: {
                this.setClassName(CLASS_NAME_EDEFAULT);
                return;
            }
            case 5: {
                this.setMode(MODE_EDEFAULT);
                return;
            }
            case 6: {
                this.setIsEnabledByDefault(true);
                return;
            }
            case 7: {
                this.setDescription(DESCRIPTION_EDEFAULT);
                return;
            }
            case 8: {
                this.setMessage(MESSAGE_EDEFAULT);
                return;
            }
            case 9: {
                this.getParameters().clear();
                return;
            }
            case 10: {
                this.setTarget(null);
                return;
            }
            case 11: {
                this.setLang(LANG_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return this.severity != SEVERITY_EDEFAULT;
            }
            case 3: {
                return this.statusCode != 0;
            }
            case 4: {
                return CLASS_NAME_EDEFAULT == null ? this.className != null : !CLASS_NAME_EDEFAULT.equals(this.className);
            }
            case 5: {
                return this.mode != MODE_EDEFAULT;
            }
            case 6: {
                return !this.isEnabledByDefault;
            }
            case 7: {
                return DESCRIPTION_EDEFAULT == null ? this.description != null : !DESCRIPTION_EDEFAULT.equals(this.description);
            }
            case 8: {
                return MESSAGE_EDEFAULT == null ? this.message != null : !MESSAGE_EDEFAULT.equals(this.message);
            }
            case 9: {
                return this.parameters != null && !this.parameters.isEmpty();
            }
            case 10: {
                return this.target != null;
            }
            case 11: {
                return LANG_EDEFAULT == null ? this.lang != null : !LANG_EDEFAULT.equals(this.lang);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (id: ");
        result.append(this.id);
        result.append(", name: ");
        result.append(this.name);
        result.append(", severity: ");
        result.append((Object)this.severity);
        result.append(", statusCode: ");
        result.append(this.statusCode);
        result.append(", className: ");
        result.append(this.className);
        result.append(", mode: ");
        result.append((Object)this.mode);
        result.append(", isEnabledByDefault: ");
        result.append(this.isEnabledByDefault);
        result.append(", description: ");
        result.append(this.description);
        result.append(", message: ");
        result.append(this.message);
        result.append(", lang: ");
        result.append(this.lang);
        result.append(')');
        return result.toString();
    }
}

