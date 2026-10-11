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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.CodeVariantType;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.FileReferenceT;
import com.etas.amd620.core.ComponentSpecification.FormattedTextT;
import com.etas.amd620.core.ComponentSpecification.HeaderFileType;
import com.etas.amd620.core.ComponentSpecification.MethodBodiesComplexType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class CodeVariantTypeImpl
extends MinimalEObjectImpl.Container
implements CodeVariantType {
    protected HeaderFileType headerFile;
    protected FileReferenceT codeFile;
    protected FileReferenceT objectFile;
    protected FormattedTextT headerBlock;
    protected MethodBodiesComplexType methodBodies;
    protected static final String GENERATOR_EDEFAULT = null;
    protected String generator = GENERATOR_EDEFAULT;
    protected static final String IMPLEMENTATION_NAME_EDEFAULT = null;
    protected String implementationName = IMPLEMENTATION_NAME_EDEFAULT;
    protected static final String IMPLEMENTATION_OID_EDEFAULT = null;
    protected String implementationOID = IMPLEMENTATION_OID_EDEFAULT;
    protected static final String TARGET_EDEFAULT = null;
    protected String target = TARGET_EDEFAULT;

    protected CodeVariantTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getCodeVariantType();
    }

    @Override
    public HeaderFileType getHeaderFile() {
        return this.headerFile;
    }

    public NotificationChain basicSetHeaderFile(HeaderFileType newHeaderFile, NotificationChain msgs) {
        HeaderFileType oldHeaderFile = this.headerFile;
        this.headerFile = newHeaderFile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldHeaderFile, (Object)newHeaderFile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHeaderFile(HeaderFileType newHeaderFile) {
        if (newHeaderFile != this.headerFile) {
            NotificationChain msgs = null;
            if (this.headerFile != null) {
                msgs = ((InternalEObject)this.headerFile).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newHeaderFile != null) {
                msgs = ((InternalEObject)newHeaderFile).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetHeaderFile(newHeaderFile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newHeaderFile, (Object)newHeaderFile));
        }
    }

    @Override
    public FileReferenceT getCodeFile() {
        return this.codeFile;
    }

    public NotificationChain basicSetCodeFile(FileReferenceT newCodeFile, NotificationChain msgs) {
        FileReferenceT oldCodeFile = this.codeFile;
        this.codeFile = newCodeFile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldCodeFile, (Object)newCodeFile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCodeFile(FileReferenceT newCodeFile) {
        if (newCodeFile != this.codeFile) {
            NotificationChain msgs = null;
            if (this.codeFile != null) {
                msgs = ((InternalEObject)this.codeFile).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newCodeFile != null) {
                msgs = ((InternalEObject)newCodeFile).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetCodeFile(newCodeFile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newCodeFile, (Object)newCodeFile));
        }
    }

    @Override
    public FileReferenceT getObjectFile() {
        return this.objectFile;
    }

    public NotificationChain basicSetObjectFile(FileReferenceT newObjectFile, NotificationChain msgs) {
        FileReferenceT oldObjectFile = this.objectFile;
        this.objectFile = newObjectFile;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldObjectFile, (Object)newObjectFile);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setObjectFile(FileReferenceT newObjectFile) {
        if (newObjectFile != this.objectFile) {
            NotificationChain msgs = null;
            if (this.objectFile != null) {
                msgs = ((InternalEObject)this.objectFile).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newObjectFile != null) {
                msgs = ((InternalEObject)newObjectFile).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetObjectFile(newObjectFile, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newObjectFile, (Object)newObjectFile));
        }
    }

    @Override
    public FormattedTextT getHeaderBlock() {
        return this.headerBlock;
    }

    public NotificationChain basicSetHeaderBlock(FormattedTextT newHeaderBlock, NotificationChain msgs) {
        FormattedTextT oldHeaderBlock = this.headerBlock;
        this.headerBlock = newHeaderBlock;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldHeaderBlock, (Object)newHeaderBlock);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHeaderBlock(FormattedTextT newHeaderBlock) {
        if (newHeaderBlock != this.headerBlock) {
            NotificationChain msgs = null;
            if (this.headerBlock != null) {
                msgs = ((InternalEObject)this.headerBlock).eInverseRemove((InternalEObject)this, -4, null, msgs);
            }
            if (newHeaderBlock != null) {
                msgs = ((InternalEObject)newHeaderBlock).eInverseAdd((InternalEObject)this, -4, null, msgs);
            }
            if ((msgs = this.basicSetHeaderBlock(newHeaderBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newHeaderBlock, (Object)newHeaderBlock));
        }
    }

    @Override
    public MethodBodiesComplexType getMethodBodies() {
        return this.methodBodies;
    }

    public NotificationChain basicSetMethodBodies(MethodBodiesComplexType newMethodBodies, NotificationChain msgs) {
        MethodBodiesComplexType oldMethodBodies = this.methodBodies;
        this.methodBodies = newMethodBodies;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMethodBodies, (Object)newMethodBodies);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMethodBodies(MethodBodiesComplexType newMethodBodies) {
        if (newMethodBodies != this.methodBodies) {
            NotificationChain msgs = null;
            if (this.methodBodies != null) {
                msgs = ((InternalEObject)this.methodBodies).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newMethodBodies != null) {
                msgs = ((InternalEObject)newMethodBodies).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetMethodBodies(newMethodBodies, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMethodBodies, (Object)newMethodBodies));
        }
    }

    @Override
    public String getGenerator() {
        return this.generator;
    }

    @Override
    public void setGenerator(String newGenerator) {
        String oldGenerator = this.generator;
        this.generator = newGenerator;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldGenerator, (Object)this.generator));
        }
    }

    @Override
    public String getImplementationName() {
        return this.implementationName;
    }

    @Override
    public void setImplementationName(String newImplementationName) {
        String oldImplementationName = this.implementationName;
        this.implementationName = newImplementationName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldImplementationName, (Object)this.implementationName));
        }
    }

    @Override
    public String getImplementationOID() {
        return this.implementationOID;
    }

    @Override
    public void setImplementationOID(String newImplementationOID) {
        String oldImplementationOID = this.implementationOID;
        this.implementationOID = newImplementationOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldImplementationOID, (Object)this.implementationOID));
        }
    }

    @Override
    public String getTarget() {
        return this.target;
    }

    @Override
    public void setTarget(String newTarget) {
        String oldTarget = this.target;
        this.target = newTarget;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTarget, (Object)this.target));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetHeaderFile(null, msgs);
            }
            case 1: {
                return this.basicSetCodeFile(null, msgs);
            }
            case 2: {
                return this.basicSetObjectFile(null, msgs);
            }
            case 3: {
                return this.basicSetHeaderBlock(null, msgs);
            }
            case 4: {
                return this.basicSetMethodBodies(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getHeaderFile();
            }
            case 1: {
                return this.getCodeFile();
            }
            case 2: {
                return this.getObjectFile();
            }
            case 3: {
                return this.getHeaderBlock();
            }
            case 4: {
                return this.getMethodBodies();
            }
            case 5: {
                return this.getGenerator();
            }
            case 6: {
                return this.getImplementationName();
            }
            case 7: {
                return this.getImplementationOID();
            }
            case 8: {
                return this.getTarget();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setHeaderFile((HeaderFileType)newValue);
                return;
            }
            case 1: {
                this.setCodeFile((FileReferenceT)newValue);
                return;
            }
            case 2: {
                this.setObjectFile((FileReferenceT)newValue);
                return;
            }
            case 3: {
                this.setHeaderBlock((FormattedTextT)newValue);
                return;
            }
            case 4: {
                this.setMethodBodies((MethodBodiesComplexType)newValue);
                return;
            }
            case 5: {
                this.setGenerator((String)newValue);
                return;
            }
            case 6: {
                this.setImplementationName((String)newValue);
                return;
            }
            case 7: {
                this.setImplementationOID((String)newValue);
                return;
            }
            case 8: {
                this.setTarget((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setHeaderFile(null);
                return;
            }
            case 1: {
                this.setCodeFile(null);
                return;
            }
            case 2: {
                this.setObjectFile(null);
                return;
            }
            case 3: {
                this.setHeaderBlock(null);
                return;
            }
            case 4: {
                this.setMethodBodies(null);
                return;
            }
            case 5: {
                this.setGenerator(GENERATOR_EDEFAULT);
                return;
            }
            case 6: {
                this.setImplementationName(IMPLEMENTATION_NAME_EDEFAULT);
                return;
            }
            case 7: {
                this.setImplementationOID(IMPLEMENTATION_OID_EDEFAULT);
                return;
            }
            case 8: {
                this.setTarget(TARGET_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.headerFile != null;
            }
            case 1: {
                return this.codeFile != null;
            }
            case 2: {
                return this.objectFile != null;
            }
            case 3: {
                return this.headerBlock != null;
            }
            case 4: {
                return this.methodBodies != null;
            }
            case 5: {
                return GENERATOR_EDEFAULT == null ? this.generator != null : !GENERATOR_EDEFAULT.equals(this.generator);
            }
            case 6: {
                return IMPLEMENTATION_NAME_EDEFAULT == null ? this.implementationName != null : !IMPLEMENTATION_NAME_EDEFAULT.equals(this.implementationName);
            }
            case 7: {
                return IMPLEMENTATION_OID_EDEFAULT == null ? this.implementationOID != null : !IMPLEMENTATION_OID_EDEFAULT.equals(this.implementationOID);
            }
            case 8: {
                return TARGET_EDEFAULT == null ? this.target != null : !TARGET_EDEFAULT.equals(this.target);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (generator: ");
        result.append(this.generator);
        result.append(", implementationName: ");
        result.append(this.implementationName);
        result.append(", implementationOID: ");
        result.append(this.implementationOID);
        result.append(", target: ");
        result.append(this.target);
        result.append(')');
        return result.toString();
    }
}

