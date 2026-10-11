/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.CodeGeneratorType;
import com.etas.amd620.core.ComponentProject.CompilerType;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.OperatingSystemType;
import com.etas.amd620.core.ComponentProject.PlatformType;
import com.etas.amd620.core.ComponentProject.TargetType1;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class PlatformTypeImpl
extends MinimalEObjectImpl.Container
implements PlatformType {
    protected TargetType1 target;
    protected CompilerType compiler;
    protected CodeGeneratorType codeGenerator;
    protected OperatingSystemType operatingSystem;
    protected static final String PLATFORM_KEY_EDEFAULT = null;
    protected String platformKey = PLATFORM_KEY_EDEFAULT;

    protected PlatformTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.PLATFORM_TYPE;
    }

    @Override
    public TargetType1 getTarget() {
        return this.target;
    }

    public NotificationChain basicSetTarget(TargetType1 newTarget, NotificationChain msgs) {
        TargetType1 oldTarget = this.target;
        this.target = newTarget;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldTarget, (Object)newTarget);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTarget(TargetType1 newTarget) {
        if (newTarget != this.target) {
            NotificationChain msgs = null;
            if (this.target != null) {
                msgs = ((InternalEObject)this.target).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newTarget != null) {
                msgs = ((InternalEObject)newTarget).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetTarget(newTarget, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newTarget, (Object)newTarget));
        }
    }

    @Override
    public CompilerType getCompiler() {
        return this.compiler;
    }

    public NotificationChain basicSetCompiler(CompilerType newCompiler, NotificationChain msgs) {
        CompilerType oldCompiler = this.compiler;
        this.compiler = newCompiler;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldCompiler, (Object)newCompiler);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompiler(CompilerType newCompiler) {
        if (newCompiler != this.compiler) {
            NotificationChain msgs = null;
            if (this.compiler != null) {
                msgs = ((InternalEObject)this.compiler).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newCompiler != null) {
                msgs = ((InternalEObject)newCompiler).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetCompiler(newCompiler, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newCompiler, (Object)newCompiler));
        }
    }

    @Override
    public CodeGeneratorType getCodeGenerator() {
        return this.codeGenerator;
    }

    public NotificationChain basicSetCodeGenerator(CodeGeneratorType newCodeGenerator, NotificationChain msgs) {
        CodeGeneratorType oldCodeGenerator = this.codeGenerator;
        this.codeGenerator = newCodeGenerator;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldCodeGenerator, (Object)newCodeGenerator);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCodeGenerator(CodeGeneratorType newCodeGenerator) {
        if (newCodeGenerator != this.codeGenerator) {
            NotificationChain msgs = null;
            if (this.codeGenerator != null) {
                msgs = ((InternalEObject)this.codeGenerator).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newCodeGenerator != null) {
                msgs = ((InternalEObject)newCodeGenerator).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetCodeGenerator(newCodeGenerator, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newCodeGenerator, (Object)newCodeGenerator));
        }
    }

    @Override
    public OperatingSystemType getOperatingSystem() {
        return this.operatingSystem;
    }

    public NotificationChain basicSetOperatingSystem(OperatingSystemType newOperatingSystem, NotificationChain msgs) {
        OperatingSystemType oldOperatingSystem = this.operatingSystem;
        this.operatingSystem = newOperatingSystem;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldOperatingSystem, (Object)newOperatingSystem);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOperatingSystem(OperatingSystemType newOperatingSystem) {
        if (newOperatingSystem != this.operatingSystem) {
            NotificationChain msgs = null;
            if (this.operatingSystem != null) {
                msgs = ((InternalEObject)this.operatingSystem).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newOperatingSystem != null) {
                msgs = ((InternalEObject)newOperatingSystem).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetOperatingSystem(newOperatingSystem, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newOperatingSystem, (Object)newOperatingSystem));
        }
    }

    @Override
    public String getPlatformKey() {
        return this.platformKey;
    }

    @Override
    public void setPlatformKey(String newPlatformKey) {
        String oldPlatformKey = this.platformKey;
        this.platformKey = newPlatformKey;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldPlatformKey, (Object)this.platformKey));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetTarget(null, msgs);
            }
            case 1: {
                return this.basicSetCompiler(null, msgs);
            }
            case 2: {
                return this.basicSetCodeGenerator(null, msgs);
            }
            case 3: {
                return this.basicSetOperatingSystem(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTarget();
            }
            case 1: {
                return this.getCompiler();
            }
            case 2: {
                return this.getCodeGenerator();
            }
            case 3: {
                return this.getOperatingSystem();
            }
            case 4: {
                return this.getPlatformKey();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTarget((TargetType1)newValue);
                return;
            }
            case 1: {
                this.setCompiler((CompilerType)newValue);
                return;
            }
            case 2: {
                this.setCodeGenerator((CodeGeneratorType)newValue);
                return;
            }
            case 3: {
                this.setOperatingSystem((OperatingSystemType)newValue);
                return;
            }
            case 4: {
                this.setPlatformKey((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTarget(null);
                return;
            }
            case 1: {
                this.setCompiler(null);
                return;
            }
            case 2: {
                this.setCodeGenerator(null);
                return;
            }
            case 3: {
                this.setOperatingSystem(null);
                return;
            }
            case 4: {
                this.setPlatformKey(PLATFORM_KEY_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.target != null;
            }
            case 1: {
                return this.compiler != null;
            }
            case 2: {
                return this.codeGenerator != null;
            }
            case 3: {
                return this.operatingSystem != null;
            }
            case 4: {
                return PLATFORM_KEY_EDEFAULT == null ? this.platformKey != null : !PLATFORM_KEY_EDEFAULT.equals(this.platformKey);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (platformKey: ");
        result.append(this.platformKey);
        result.append(')');
        return result.toString();
    }
}

