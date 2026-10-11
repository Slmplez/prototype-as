/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENamedElementImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class EClassifierImpl
extends ENamedElementImpl
implements EClassifier,
BasicExtendedMetaData.EClassifierExtendedMetaData.Holder {
    protected int metaObjectID = -1;
    protected static final String INSTANCE_CLASS_NAME_EDEFAULT = null;
    protected String instanceClassName = INSTANCE_CLASS_NAME_EDEFAULT;
    protected String generatedInstanceClassName;
    protected static final Class<?> INSTANCE_CLASS_EDEFAULT = null;
    protected static final Object DEFAULT_VALUE_EDEFAULT = null;
    private static final String INSTANCE_TYPE_NAME_EDEFAULT = null;
    protected String instanceTypeName;
    protected EList<ETypeParameter> eTypeParameters;
    protected Class<?> instanceClass = INSTANCE_CLASS_EDEFAULT;
    EPackage ePackage;
    protected BasicExtendedMetaData.EClassifierExtendedMetaData eClassifierExtendedMetaData;

    protected EClassifierImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.ECLASSIFIER;
    }

    @Override
    public int getClassifierID() {
        if (this.metaObjectID == -1) {
            this.metaObjectID = this.computeClassifierID();
        }
        return this.metaObjectID;
    }

    private final int computeClassifierID() {
        EPackage ePackage = this.getEPackage();
        return ePackage != null ? ePackage.getEClassifiers().indexOf((Object)this) : -1;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 6, msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 6: {
                return this.eBasicSetContainer(null, 6, msgs);
            }
            case 7: {
                return ((InternalEList)this.getETypeParameters()).basicRemove(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove(this, 5, EPackage.class, msgs);
            }
        }
        return this.eDynamicBasicRemoveFromContainer(msgs);
    }

    public void setClassifierID(int id) {
        this.metaObjectID = id;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean isInstance(Object object) {
        if (object == null) return false;
        Class<?> instanceClass = this.getInstanceClass();
        if (instanceClass != null) {
            if (!instanceClass.isPrimitive()) return instanceClass.isInstance(object);
            if (instanceClass == Boolean.TYPE) {
                return object instanceof Boolean;
            }
            if (instanceClass == Integer.TYPE) {
                return object instanceof Integer;
            }
            if (instanceClass == Float.TYPE) {
                return object instanceof Float;
            }
            if (instanceClass == Byte.TYPE) {
                return object instanceof Byte;
            }
            if (instanceClass == Character.TYPE) {
                return object instanceof Character;
            }
            if (instanceClass == Double.TYPE) {
                return object instanceof Double;
            }
            if (instanceClass == Short.TYPE) {
                return object instanceof Short;
            }
            if (instanceClass != Long.TYPE) return false;
            return object instanceof Long;
        }
        if (!(object instanceof EObject)) return false;
        return this.dynamicIsInstance((EObject)object);
    }

    protected boolean dynamicIsInstance(EObject eObject) {
        return eObject.eClass() == this;
    }

    @Deprecated
    public String getInstanceClassNameGen() {
        return this.instanceClassName;
    }

    @Override
    public String getInstanceClassName() {
        return this.instanceClassName != null ? this.instanceClassName : this.generatedInstanceClassName;
    }

    public void setGeneratedInstanceClass(boolean isGenerated) {
        if (isGenerated) {
            if (this.generatedInstanceClassName == null) {
                this.generatedInstanceClassName = this.instanceClassName;
                this.instanceClassName = null;
            }
        } else if (this.generatedInstanceClassName != null) {
            this.instanceClassName = this.generatedInstanceClassName;
            this.generatedInstanceClassName = null;
        }
    }

    protected void basicSetInstanceClassName(String value) {
        if (this.instanceClassName == null && this.generatedInstanceClassName != null) {
            this.instanceClassName = this.generatedInstanceClassName;
            this.generatedInstanceClassName = null;
        }
        this.setInstanceClassNameGen(value == null ? null : value.intern());
        if (this.instanceClass != null) {
            this.setInstanceClassGen(null);
        }
    }

    @Override
    public void setInstanceClassName(String value) {
        this.basicSetInstanceClassName(value);
        this.basicSetInstanceTypeName(this.instanceClassName);
    }

    public void setInstanceClassNameGen(String newInstanceClassName) {
        String oldInstanceClassName = this.instanceClassName;
        this.instanceClassName = newInstanceClassName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldInstanceClassName, (Object)this.instanceClassName));
        }
    }

    public void unsetInstanceClassName() {
        this.setInstanceClassName(null);
    }

    public boolean isSetInstanceClassName() {
        return this.instanceClassName != null && this.instanceClassName == this.instanceTypeName;
    }

    @Override
    public Class<?> getInstanceClass() {
        if (this.instanceClass == null && (this.instanceClassName != null || this.generatedInstanceClassName != null)) {
            Class<?> primitiveClass = this.getPrimitiveOrArrayClass();
            if (primitiveClass != null) {
                this.setInstanceClassGen(primitiveClass);
            } else {
                try {
                    this.setInstanceClassGen(this.getClassForName(this.getInstanceClassName()));
                }
                catch (ClassNotFoundException classNotFoundException) {
                    // empty catch block
                }
            }
        }
        return this.getInstanceClassGen();
    }

    protected Class<?> getClassForName(String name) throws ClassNotFoundException {
        EPackage p = this.getEPackage();
        return p != null ? Class.forName(name, true, p.getClass().getClassLoader()) : Class.forName(name);
    }

    protected Class<?> getPrimitiveOrArrayClass() {
        String className = this.getInstanceClassName();
        int arrayIndex = className.indexOf(91);
        if (arrayIndex != -1) {
            String componentClassName = className.substring(0, arrayIndex);
            StringBuffer result = new StringBuffer();
            do {
                result.append('[');
                ++arrayIndex;
            } while ((arrayIndex = className.indexOf(91, arrayIndex)) != -1);
            if (componentClassName.equals("boolean")) {
                result.append('Z');
            } else if (componentClassName.equals("byte")) {
                result.append('B');
            } else if (componentClassName.equals("char")) {
                result.append('C');
            } else if (componentClassName.equals("double")) {
                result.append('D');
            } else if (componentClassName.equals("float")) {
                result.append('F');
            } else if (componentClassName.equals("int")) {
                result.append('I');
            } else if (componentClassName.equals("long")) {
                result.append('J');
            } else if (componentClassName.equals("short")) {
                result.append('S');
            } else {
                result.append('L');
                result.append(componentClassName);
                result.append(';');
            }
            try {
                return this.getClassForName(result.toString());
            }
            catch (ClassNotFoundException classNotFoundException) {
            }
        } else if (className.indexOf(46) == -1) {
            if (className.equals("boolean")) {
                return Boolean.TYPE;
            }
            if (className.equals("byte")) {
                return Byte.TYPE;
            }
            if (className.equals("char")) {
                return Character.TYPE;
            }
            if (className.equals("double")) {
                return Double.TYPE;
            }
            if (className.equals("float")) {
                return Float.TYPE;
            }
            if (className.equals("int")) {
                return Integer.TYPE;
            }
            if (className.equals("long")) {
                return Long.TYPE;
            }
            if (className.equals("short")) {
                return Short.TYPE;
            }
        }
        return null;
    }

    public Class<?> getInstanceClassGen() {
        return this.instanceClass;
    }

    @Override
    public void setInstanceClass(Class<?> value) {
        block5: {
            if (value == null) {
                this.setInstanceClassNameGen(null);
                this.basicSetInstanceTypeName(null);
            } else {
                if (value.isArray()) {
                    String indices = "[]";
                    Class<?> component = value.getComponentType();
                    while (true) {
                        if (!component.isArray()) {
                            String name = (String.valueOf(component.getName()) + indices).intern();
                            this.setInstanceClassNameGen(name);
                            this.basicSetInstanceTypeName(name);
                            break block5;
                        }
                        indices = String.valueOf(indices) + "[]";
                        component = component.getComponentType();
                    }
                }
                String name = value.getName().intern();
                this.setInstanceClassNameGen(name);
                this.basicSetInstanceTypeName(name);
            }
        }
        this.setInstanceClassGen(value);
    }

    public void setInstanceClassGen(Class<?> newInstanceClass) {
        this.instanceClass = newInstanceClass;
    }

    @Override
    public Object getDefaultValue() {
        return null;
    }

    @Override
    public String getInstanceTypeName() {
        return this.instanceTypeName;
    }

    @Override
    public void setInstanceTypeName(String newInstanceTypeName) {
        String oldInstanceTypeName = this.instanceTypeName;
        if (newInstanceTypeName == null) {
            this.instanceTypeName = null;
            this.basicSetInstanceClassName(null);
        } else {
            this.instanceTypeName = newInstanceTypeName.intern();
            int index = newInstanceTypeName.indexOf(60);
            if (index != -1) {
                int end;
                String newInstanceClassName = newInstanceTypeName.substring(0, index);
                if (!(newInstanceTypeName.indexOf(46) != -1 || newInstanceClassName.equals("boolean") || newInstanceClassName.equals("byte") || newInstanceClassName.equals("char") || newInstanceClassName.equals("double") || newInstanceClassName.equals("float") || newInstanceClassName.equals("int") || newInstanceClassName.equals("long") || newInstanceClassName.equals("short"))) {
                    newInstanceClassName = "java.lang.Object";
                }
                if ((end = newInstanceTypeName.lastIndexOf(62)) != -1) {
                    newInstanceClassName = String.valueOf(newInstanceClassName) + newInstanceTypeName.substring(end + 1);
                }
                this.basicSetInstanceClassName(newInstanceClassName);
            } else {
                String newInstanceClassName = newInstanceTypeName;
                if (newInstanceTypeName.indexOf(46) == -1) {
                    index = newInstanceTypeName.indexOf(91);
                    if (index != -1) {
                        newInstanceClassName = newInstanceTypeName.substring(0, index);
                    }
                    if (!(newInstanceClassName.equals("boolean") || newInstanceClassName.equals("byte") || newInstanceClassName.equals("char") || newInstanceClassName.equals("double") || newInstanceClassName.equals("float") || newInstanceClassName.equals("int") || newInstanceClassName.equals("long") || newInstanceClassName.equals("short"))) {
                        newInstanceClassName = "java.lang.Object";
                        if (index != -1) {
                            newInstanceClassName = String.valueOf(newInstanceClassName) + newInstanceTypeName.substring(index);
                        }
                    } else {
                        newInstanceClassName = newInstanceTypeName;
                    }
                }
                this.basicSetInstanceClassName(newInstanceClassName);
                if (newInstanceClassName == newInstanceTypeName) {
                    this.instanceTypeName = this.instanceClassName;
                }
            }
        }
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldInstanceTypeName, (Object)newInstanceTypeName));
        }
    }

    protected void basicSetInstanceTypeName(String newInstanceTypeName) {
        String oldInstanceTypeName = this.instanceTypeName;
        this.instanceTypeName = newInstanceTypeName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldInstanceTypeName, (Object)newInstanceTypeName));
        }
    }

    public void unsetInstanceTypeName() {
        this.setInstanceTypeName(null);
    }

    public boolean isSetInstanceTypeName() {
        return this.instanceTypeName != null && this.instanceTypeName != this.instanceClassName && this.instanceTypeName != this.generatedInstanceClassName;
    }

    public EPackage getEPackageGen() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (EPackage)this.eContainer();
    }

    @Override
    public EPackage getEPackage() {
        if (this.ePackage != null) {
            return this.ePackage;
        }
        EPackage result = this.getEPackageGen();
        if (result != null && !result.eIsProxy()) {
            this.ePackage = result;
        }
        return result;
    }

    @Override
    protected void eBasicSetContainer(InternalEObject newContainer, int newContainerFeatureID) {
        this.ePackage = null;
        super.eBasicSetContainer(newContainer, newContainerFeatureID);
    }

    public EPackage basicGetEPackage() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (EPackage)((Object)this.eInternalContainer());
    }

    @Override
    public EList<ETypeParameter> getETypeParameters() {
        if (this.eTypeParameters == null) {
            this.eTypeParameters = new EObjectContainmentEList.Resolving<ETypeParameter>(ETypeParameter.class, this, 7);
        }
        return this.eTypeParameters;
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (instanceClassName: ");
        result.append(this.instanceClassName);
        result.append(')');
        return result.toString();
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.getInstanceClassName();
            }
            case 3: {
                return this.getInstanceClass();
            }
            case 4: {
                return this.getDefaultValue();
            }
            case 5: {
                return this.getInstanceTypeName();
            }
            case 6: {
                if (resolve) {
                    return this.getEPackage();
                }
                return this.basicGetEPackage();
            }
            case 7: {
                return this.getETypeParameters();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
            case 2: {
                this.setInstanceClassName((String)newValue);
                return;
            }
            case 5: {
                this.setInstanceTypeName((String)newValue);
                return;
            }
            case 7: {
                this.getETypeParameters().clear();
                this.getETypeParameters().addAll((Collection)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.unsetInstanceClassName();
                return;
            }
            case 5: {
                this.unsetInstanceTypeName();
                return;
            }
            case 7: {
                this.getETypeParameters().clear();
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return this.isSetInstanceClassName();
            }
            case 3: {
                return this.getInstanceClass() != null;
            }
            case 4: {
                return DEFAULT_VALUE_EDEFAULT == null ? this.getDefaultValue() != null : !DEFAULT_VALUE_EDEFAULT.equals(this.getDefaultValue());
            }
            case 5: {
                return this.isSetInstanceTypeName();
            }
            case 6: {
                return this.basicGetEPackage() != null;
            }
            case 7: {
                return this.eTypeParameters != null && !this.eTypeParameters.isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        switch (operationID) {
            case 0: {
                return this.getEAnnotation((String)arguments.get(0));
            }
            case 1: {
                return this.isInstance(arguments.get(0));
            }
            case 2: {
                return this.getClassifierID();
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    @Override
    public BasicExtendedMetaData.EClassifierExtendedMetaData getExtendedMetaData() {
        return this.eClassifierExtendedMetaData;
    }

    @Override
    public void setExtendedMetaData(BasicExtendedMetaData.EClassifierExtendedMetaData eClassifierExtendedMetaData) {
        this.eClassifierExtendedMetaData = eClassifierExtendedMetaData;
    }

    @Override
    public void setName(String newName) {
        if (this.eContainer instanceof EPackageImpl) {
            ((EPackageImpl)this.eContainer).eNameToEClassifierMap = null;
        }
        super.setName(newName);
    }
}

