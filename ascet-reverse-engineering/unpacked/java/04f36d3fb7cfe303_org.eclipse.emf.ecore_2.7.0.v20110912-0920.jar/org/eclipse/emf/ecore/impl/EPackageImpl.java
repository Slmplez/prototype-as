/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.CommonPlugin
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.Enumerator
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EAttributeImpl;
import org.eclipse.emf.ecore.impl.EClassImpl;
import org.eclipse.emf.ecore.impl.EClassifierImpl;
import org.eclipse.emf.ecore.impl.EDataTypeImpl;
import org.eclipse.emf.ecore.impl.EEnumImpl;
import org.eclipse.emf.ecore.impl.EEnumLiteralImpl;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.impl.ENamedElementImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EOperationImpl;
import org.eclipse.emf.ecore.impl.EReferenceImpl;
import org.eclipse.emf.ecore.impl.EStructuralFeatureImpl;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EPackageImpl
extends ENamedElementImpl
implements EPackage,
BasicExtendedMetaData.EPackageExtendedMetaData.Holder {
    protected static final String NS_URI_EDEFAULT = null;
    protected EcoreFactory ecoreFactory;
    protected EcorePackage ecorePackage;
    protected Map<String, EClassifier> eNameToEClassifierMap;
    protected String nsURI = NS_URI_EDEFAULT;
    protected static final String NS_PREFIX_EDEFAULT = null;
    protected String nsPrefix = NS_PREFIX_EDEFAULT;
    protected EFactory eFactoryInstance;
    protected EList<EClassifier> eClassifiers;
    protected EList<EPackage> eSubpackages;
    private static Resource.Factory resourceFactory;
    protected static final boolean IS_ABSTRACT = true;
    protected static final boolean IS_INTERFACE = true;
    protected static final boolean IS_GENERATED_INSTANCE_CLASS = true;
    protected static final boolean IS_SERIALIZABLE = true;
    protected static final boolean IS_DERIVED = true;
    protected static final boolean IS_TRANSIENT = true;
    protected static final boolean IS_VOLATILE = true;
    protected static final boolean IS_CHANGEABLE = true;
    protected static final boolean IS_UNSETTABLE = true;
    protected static final boolean IS_UNIQUE = true;
    protected static final boolean IS_ID = true;
    protected static final boolean IS_ORDERED = true;
    protected static final boolean IS_COMPOSITE = true;
    protected static final boolean IS_RESOLVE_PROXIES = true;
    protected static final boolean IS_RESOLVABLE = true;
    protected BasicExtendedMetaData.EPackageExtendedMetaData ePackageExtendedMetaData;

    protected EPackageImpl() {
        this.setEFactoryInstance(new EFactoryImpl());
        this.ecorePackage = EcorePackage.eINSTANCE;
        this.ecoreFactory = EcoreFactory.eINSTANCE;
    }

    protected EPackageImpl(EFactory eFactory) {
        this.setEFactoryInstance(eFactory);
        this.ecorePackage = EcorePackage.eINSTANCE;
        this.ecoreFactory = EcoreFactory.eINSTANCE;
    }

    protected EPackageImpl(String packageURI) {
        this(packageURI, new EFactoryImpl());
    }

    protected EPackageImpl(String packageURI, final EFactory factory) {
        Object registration = EPackage.Registry.INSTANCE.get(packageURI);
        if (registration instanceof EPackage.Descriptor) {
            final EPackage.Descriptor descriptor = (EPackage.Descriptor)registration;
            final long threadId = Thread.currentThread().getId();
            EPackage.Registry.INSTANCE.put(packageURI, new EPackage.Descriptor(){

                public EPackage getEPackage() {
                    return Thread.currentThread().getId() == threadId ? EPackageImpl.this : descriptor.getEPackage();
                }

                public EFactory getEFactory() {
                    return Thread.currentThread().getId() == threadId ? factory : descriptor.getEFactory();
                }
            });
        } else {
            EPackage.Registry.INSTANCE.put(packageURI, this);
        }
        this.setEFactoryInstance(factory);
        if (factory == EcoreFactory.eINSTANCE) {
            this.ecorePackage = (EcorePackage)((Object)this);
            this.ecoreFactory = (EcoreFactory)factory;
        } else {
            this.ecorePackage = EcorePackage.eINSTANCE;
            this.ecoreFactory = EcoreFactory.eINSTANCE;
        }
    }

    @Override
    public void freeze() {
        int size;
        int i;
        if (this.eClassifiers != null) {
            i = 0;
            size = this.eClassifiers.size();
            while (i < size) {
                this.freeze(this.eClassifiers.get(i));
                ++i;
            }
        }
        if (this.eSubpackages != null) {
            i = 0;
            size = this.eSubpackages.size();
            while (i < size) {
                this.freeze(this.eSubpackages.get(i));
                ++i;
            }
        }
        super.freeze();
    }

    @Override
    public void eSetProxyURI(URI uri) {
        if (uri != null && this.eClassifiers != null) {
            for (Object eClassifier : this.eClassifiers) {
                if (!(eClassifier instanceof EClassifierImpl)) continue;
                ((EClassifierImpl)eClassifier).ePackage = null;
            }
        }
        super.eSetProxyURI(uri);
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EPACKAGE;
    }

    @Deprecated
    public void setNamespaceURI(String nsURI) {
    }

    @Override
    public String getNsURI() {
        return this.nsURI;
    }

    @Override
    public void setNsURI(String newNsURI) {
        String oldNsURI = this.nsURI;
        this.nsURI = newNsURI;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldNsURI, (Object)this.nsURI));
        }
    }

    @Override
    public String getNsPrefix() {
        return this.nsPrefix;
    }

    @Override
    public void setNsPrefix(String newNsPrefix) {
        String oldNsPrefix = this.nsPrefix;
        this.nsPrefix = newNsPrefix;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldNsPrefix, (Object)this.nsPrefix));
        }
    }

    @Override
    public EFactory getEFactoryInstance() {
        return this.eFactoryInstance;
    }

    @Override
    public void setEFactoryInstance(EFactory newEFactoryInstance) {
        if (newEFactoryInstance != this.eFactoryInstance) {
            NotificationChain msgs = null;
            if (this.eFactoryInstance != null) {
                msgs = ((InternalEObject)((Object)this.eFactoryInstance)).eInverseRemove(this, 1, EFactory.class, msgs);
            }
            if (newEFactoryInstance != null) {
                msgs = ((InternalEObject)((Object)newEFactoryInstance)).eInverseAdd(this, 1, EFactory.class, msgs);
            }
            if ((msgs = this.basicSetEFactoryInstance(newEFactoryInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEFactoryInstance, (Object)newEFactoryInstance));
        }
    }

    public NotificationChain basicSetEFactoryInstance(EFactory newEFactoryInstance, NotificationChain msgs) {
        EFactory oldEFactoryInstance = this.eFactoryInstance;
        this.eFactoryInstance = newEFactoryInstance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldEFactoryInstance, (Object)newEFactoryInstance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public EList<EClassifier> getEClassifiers() {
        if (this.eClassifiers == null) {
            this.eClassifiers = new EObjectContainmentWithInverseEList.Resolving<EClassifier>(EClassifier.class, (InternalEObject)this, 5, 6){
                private static final long serialVersionUID = 1L;

                protected void didChange() {
                    EPackageImpl.this.eNameToEClassifierMap = null;
                }
            };
        }
        return this.eClassifiers;
    }

    @Override
    public EClassifier getEClassifier(String name) {
        return this.getEClassifierGen(name);
    }

    public EClassifier getEClassifierGen(String name) {
        if (this.eNameToEClassifierMap == null) {
            EList<EClassifier> eClassifiers = this.getEClassifiers();
            HashMap<String, EClassifier> result = new HashMap<String, EClassifier>(eClassifiers.size());
            for (EClassifier eClassifier : eClassifiers) {
                result.put(eClassifier.getName(), eClassifier);
            }
            this.eNameToEClassifierMap = result;
        }
        return this.eNameToEClassifierMap.get(name);
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 4: {
                if (this.eFactoryInstance != null) {
                    msgs = ((InternalEObject)((Object)this.eFactoryInstance)).eInverseRemove(this, 1, EFactory.class, msgs);
                }
                return this.basicSetEFactoryInstance((EFactory)((Object)otherEnd), msgs);
            }
            case 5: {
                return ((InternalEList)this.getEClassifiers()).basicAdd(otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getESubpackages()).basicAdd(otherEnd, msgs);
            }
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 7, msgs);
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
            case 4: {
                return this.basicSetEFactoryInstance(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getEClassifiers()).basicRemove(otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getESubpackages()).basicRemove(otherEnd, msgs);
            }
            case 7: {
                return this.eBasicSetContainer(null, 7, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove(this, 6, EPackage.class, msgs);
            }
        }
        return this.eDynamicBasicRemoveFromContainer(msgs);
    }

    @Override
    public EList<EPackage> getESubpackages() {
        if (this.eSubpackages == null) {
            this.eSubpackages = new EObjectContainmentWithInverseEList.Resolving<EPackage>(EPackage.class, this, 6, 7);
        }
        return this.eSubpackages;
    }

    @Override
    public EPackage getESuperPackage() {
        return this.eContainerFeatureID() == 7 ? (EPackage)((Object)this.eContainer) : null;
    }

    public EPackage basicGetESuperPackage() {
        if (this.eContainerFeatureID() != 7) {
            return null;
        }
        return (EPackage)((Object)this.eInternalContainer());
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
                return this.getNsURI();
            }
            case 3: {
                return this.getNsPrefix();
            }
            case 4: {
                return this.getEFactoryInstance();
            }
            case 5: {
                return this.getEClassifiers();
            }
            case 6: {
                return this.getESubpackages();
            }
            case 7: {
                if (resolve) {
                    return this.getESuperPackage();
                }
                return this.basicGetESuperPackage();
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
                this.setNsURI((String)newValue);
                return;
            }
            case 3: {
                this.setNsPrefix((String)newValue);
                return;
            }
            case 4: {
                this.setEFactoryInstance((EFactory)newValue);
                return;
            }
            case 5: {
                this.getEClassifiers().clear();
                this.getEClassifiers().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getESubpackages().clear();
                this.getESubpackages().addAll((Collection)newValue);
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
                this.setNsURI(NS_URI_EDEFAULT);
                return;
            }
            case 3: {
                this.setNsPrefix(NS_PREFIX_EDEFAULT);
                return;
            }
            case 4: {
                this.setEFactoryInstance(null);
                return;
            }
            case 5: {
                this.getEClassifiers().clear();
                return;
            }
            case 6: {
                this.getESubpackages().clear();
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
                return NS_URI_EDEFAULT == null ? this.nsURI != null : !NS_URI_EDEFAULT.equals(this.nsURI);
            }
            case 3: {
                return NS_PREFIX_EDEFAULT == null ? this.nsPrefix != null : !NS_PREFIX_EDEFAULT.equals(this.nsPrefix);
            }
            case 4: {
                return this.eFactoryInstance != null;
            }
            case 5: {
                return this.eClassifiers != null && !this.eClassifiers.isEmpty();
            }
            case 6: {
                return this.eSubpackages != null && !this.eSubpackages.isEmpty();
            }
            case 7: {
                return this.basicGetESuperPackage() != null;
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
                return this.getEClassifier((String)arguments.get(0));
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nsURI: ");
        result.append(this.nsURI);
        result.append(", nsPrefix: ");
        result.append(this.nsPrefix);
        result.append(')');
        return result.toString();
    }

    protected Resource createResource(String uri) {
        Resource resource = this.eResource();
        if (resource == null) {
            if (resourceFactory == null) {
                try {
                    resourceFactory = (Resource.Factory)CommonPlugin.loadClass((String)"org.eclipse.emf.ecore.xmi", (String)"org.eclipse.emf.ecore.xmi.impl.EcoreResourceFactoryImpl").newInstance();
                }
                catch (Throwable exception) {
                    resourceFactory = new ResourceFactoryImpl();
                }
            }
            URI actualURI = URI.createURI((String)uri);
            resource = resourceFactory.createResource(actualURI);
            resource.getContents().add((Object)this);
        }
        return resource;
    }

    protected EClass createEClass(int id) {
        EClassImpl c = (EClassImpl)this.ecoreFactory.createEClass();
        c.setClassifierID(id);
        this.getEClassifiers().add((Object)c);
        return c;
    }

    protected EEnum createEEnum(int id) {
        EEnumImpl e = (EEnumImpl)this.ecoreFactory.createEEnum();
        e.setClassifierID(id);
        this.getEClassifiers().add((Object)e);
        return e;
    }

    protected EDataType createEDataType(int id) {
        EDataTypeImpl d = (EDataTypeImpl)this.ecoreFactory.createEDataType();
        d.setClassifierID(id);
        this.getEClassifiers().add((Object)d);
        return d;
    }

    protected void createEAttribute(EClass owner, int id) {
        EAttributeImpl a = (EAttributeImpl)this.ecoreFactory.createEAttribute();
        a.setFeatureID(id);
        owner.getEStructuralFeatures().add((Object)a);
    }

    protected void createEReference(EClass owner, int id) {
        EReferenceImpl r = (EReferenceImpl)this.ecoreFactory.createEReference();
        r.setFeatureID(id);
        owner.getEStructuralFeatures().add((Object)r);
    }

    protected void createEOperation(EClass owner, int id) {
        EOperationImpl o = (EOperationImpl)this.ecoreFactory.createEOperation();
        o.setOperationID(id);
        owner.getEOperations().add((Object)o);
    }

    protected ETypeParameter addETypeParameter(EClassifier owner, String name) {
        ETypeParameter eTypeParameter = this.ecoreFactory.createETypeParameter();
        eTypeParameter.setName(name);
        owner.getETypeParameters().add((Object)eTypeParameter);
        return eTypeParameter;
    }

    protected ETypeParameter addETypeParameter(EOperation owner, String name) {
        ETypeParameter eTypeParameter = this.ecoreFactory.createETypeParameter();
        eTypeParameter.setName(name);
        owner.getETypeParameters().add((Object)eTypeParameter);
        return eTypeParameter;
    }

    protected EGenericType createEGenericType() {
        EGenericType eGenericType = this.ecoreFactory.createEGenericType();
        return eGenericType;
    }

    protected EGenericType createEGenericType(ETypeParameter eTypeParameter) {
        EGenericType eGenericType = this.ecoreFactory.createEGenericType();
        eGenericType.setETypeParameter(eTypeParameter);
        return eGenericType;
    }

    protected EGenericType createEGenericType(EClassifier eClassifier) {
        EGenericType eGenericType = this.ecoreFactory.createEGenericType();
        eGenericType.setEClassifier(eClassifier);
        return eGenericType;
    }

    protected EClass initEClass(EClass c, Class<?> instanceClass, String name, boolean isAbstract, boolean isInterface) {
        this.initEClassifier(c, this.ecorePackage.getEClass(), instanceClass, name);
        c.setAbstract(isAbstract);
        c.setInterface(isInterface);
        return c;
    }

    protected EClass initEClass(EClass c, Class<?> instanceClass, String name, boolean isAbstract, boolean isInterface, boolean isGenerated) {
        this.initEClassifier(c, this.ecorePackage.getEClass(), instanceClass, name, isGenerated);
        c.setAbstract(isAbstract);
        c.setInterface(isInterface);
        return c;
    }

    protected EClass initEClass(EClass c, Class<?> instanceClass, String name, boolean isAbstract, boolean isInterface, boolean isGenerated, String instanceTypeName) {
        this.initEClass(c, instanceClass, name, isAbstract, isInterface, isGenerated);
        if (instanceTypeName != null) {
            this.setInstanceTypeName(c, instanceTypeName);
        }
        return c;
    }

    protected EEnum initEEnum(EEnum e, Class<?> instanceClass, String name) {
        this.initEClassifier(e, this.ecorePackage.getEEnum(), instanceClass, name, true);
        return e;
    }

    protected EDataType initEDataType(EDataType d, Class<?> instanceClass, String name, boolean isSerializable) {
        this.initEClassifier(d, this.ecorePackage.getEDataType(), instanceClass, name, false);
        d.setSerializable(isSerializable);
        return d;
    }

    protected EDataType initEDataType(EDataType d, Class<?> instanceClass, String name, boolean isSerializable, boolean isGenerated) {
        this.initEClassifier(d, this.ecorePackage.getEDataType(), instanceClass, name, isGenerated);
        d.setSerializable(isSerializable);
        return d;
    }

    protected EDataType initEDataType(EDataType d, Class<?> instanceClass, String name, boolean isSerializable, boolean isGenerated, String instanceTypeName) {
        this.initEDataType(d, instanceClass, name, isSerializable, isGenerated);
        if (instanceTypeName != null) {
            this.setInstanceTypeName(d, instanceTypeName);
        }
        return d;
    }

    private void initEClassifier(EClassifier o, EClass metaObject, Class<?> instanceClass, String name) {
        o.setName(name);
        if (instanceClass != null) {
            o.setInstanceClass(instanceClass);
        }
    }

    private void initEClassifier(EClassifier o, EClass metaObject, Class<?> instanceClass, String name, boolean isGenerated) {
        o.setName(name);
        if (instanceClass != null) {
            o.setInstanceClass(instanceClass);
        }
        if (isGenerated) {
            this.setGeneratedClassName(o);
        }
    }

    protected void setGeneratedClassName(EClassifier eClassifier) {
        ((EClassifierImpl)eClassifier).setGeneratedInstanceClass(true);
    }

    protected void setInstanceTypeName(EClassifier eClassifier, String instanceTypeName) {
        ((EClassifierImpl)eClassifier).basicSetInstanceTypeName(instanceTypeName);
    }

    @Deprecated
    protected EAttribute initEAttribute(EAttribute a, EClassifier type, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable) {
        return this.initEAttribute(a, type, name, defaultValue, lowerBound, upperBound, isTransient, isVolatile, isChangeable, isUnsettable, false, true);
    }

    @Deprecated
    protected EAttribute initEAttribute(EAttribute a, EClassifier type, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable, boolean isID) {
        return this.initEAttribute(a, type, name, defaultValue, lowerBound, upperBound, isTransient, isVolatile, isChangeable, isUnsettable, isID, true);
    }

    @Deprecated
    protected EAttribute initEAttribute(EAttribute a, EClassifier type, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable, boolean isID, boolean isUnique) {
        return this.initEAttribute(a, type, name, defaultValue, lowerBound, upperBound, isTransient, isVolatile, isChangeable, isUnsettable, isID, isUnique, false);
    }

    protected EAttribute initEAttribute(EAttribute a, EClassifier type, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable, boolean isID, boolean isUnique, boolean isDerived) {
        return this.initEAttribute(a, type, name, defaultValue, lowerBound, upperBound, isTransient, isVolatile, isChangeable, isUnsettable, isID, isUnique, isDerived, true);
    }

    protected EAttribute initEAttribute(EAttribute a, EClassifier type, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable, boolean isID, boolean isUnique, boolean isDerived, boolean isOrdered) {
        this.initEAttribute(a, type, name, defaultValue, lowerBound, upperBound, ((EClassifier)a.eContainer()).getInstanceClass(), isTransient, isVolatile, isChangeable, isUnsettable, isID, isUnique, isDerived, isOrdered);
        return a;
    }

    protected EAttribute initEAttribute(EAttribute a, EClassifier type, String name, String defaultValue, int lowerBound, int upperBound, Class<?> containerClass, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable, boolean isID, boolean isUnique, boolean isDerived, boolean isOrdered) {
        this.initEStructuralFeature((EStructuralFeature)a, type, name, defaultValue, lowerBound, upperBound, containerClass, isTransient, isVolatile, isChangeable, isUnsettable, isUnique, isDerived, isOrdered);
        a.setID(isID);
        return a;
    }

    protected EAttribute initEAttribute(EAttribute a, EGenericType type, String name, String defaultValue, int lowerBound, int upperBound, Class<?> containerClass, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable, boolean isID, boolean isUnique, boolean isDerived, boolean isOrdered) {
        this.initEStructuralFeature((EStructuralFeature)a, type, name, defaultValue, lowerBound, upperBound, containerClass, isTransient, isVolatile, isChangeable, isUnsettable, isUnique, isDerived, isOrdered);
        a.setID(isID);
        return a;
    }

    @Deprecated
    protected EReference initEReference(EReference r, EClassifier type, EReference otherEnd, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isContainment, boolean isResolveProxies) {
        this.initEReference(r, type, otherEnd, name, defaultValue, lowerBound, upperBound, isTransient, isVolatile, isChangeable, isContainment, isResolveProxies, false, true);
        return r;
    }

    @Deprecated
    protected EReference initEReference(EReference r, EClassifier type, EReference otherEnd, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isContainment, boolean isResolveProxies, boolean isUnsettable) {
        this.initEReference(r, type, otherEnd, name, defaultValue, lowerBound, upperBound, isTransient, isVolatile, isChangeable, isContainment, isResolveProxies, isUnsettable, true);
        return r;
    }

    @Deprecated
    protected EReference initEReference(EReference r, EClassifier type, EReference otherEnd, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isContainment, boolean isResolveProxies, boolean isUnsettable, boolean isUnique) {
        this.initEReference(r, type, otherEnd, name, defaultValue, lowerBound, upperBound, isTransient, isVolatile, isChangeable, isContainment, isResolveProxies, isUnsettable, isUnique, false);
        return r;
    }

    protected EReference initEReference(EReference r, EClassifier type, EReference otherEnd, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isContainment, boolean isResolveProxies, boolean isUnsettable, boolean isUnique, boolean isDerived) {
        this.initEReference(r, type, otherEnd, name, defaultValue, lowerBound, upperBound, isTransient, isVolatile, isChangeable, isContainment, isResolveProxies, isUnsettable, isUnique, isDerived, true);
        return r;
    }

    protected EReference initEReference(EReference r, EClassifier type, EReference otherEnd, String name, String defaultValue, int lowerBound, int upperBound, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isContainment, boolean isResolveProxies, boolean isUnsettable, boolean isUnique, boolean isDerived, boolean isOrdered) {
        this.initEReference(r, type, otherEnd, name, defaultValue, lowerBound, upperBound, ((EClassifier)r.eContainer()).getInstanceClass(), isTransient, isVolatile, isChangeable, isContainment, isResolveProxies, isUnsettable, isUnique, isDerived, isOrdered);
        return r;
    }

    protected EReference initEReference(EReference r, EClassifier type, EReference otherEnd, String name, String defaultValue, int lowerBound, int upperBound, Class<?> containerClass, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isContainment, boolean isResolveProxies, boolean isUnsettable, boolean isUnique, boolean isDerived, boolean isOrdered) {
        this.initEStructuralFeature((EStructuralFeature)r, type, name, defaultValue, lowerBound, upperBound, containerClass, isTransient, isVolatile, isChangeable, isUnsettable, isUnique, isDerived, isOrdered);
        r.setContainment(isContainment);
        if (otherEnd != null) {
            r.setEOpposite(otherEnd);
        }
        r.setResolveProxies(isResolveProxies);
        return r;
    }

    protected EReference initEReference(EReference r, EGenericType type, EReference otherEnd, String name, String defaultValue, int lowerBound, int upperBound, Class<?> containerClass, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isContainment, boolean isResolveProxies, boolean isUnsettable, boolean isUnique, boolean isDerived, boolean isOrdered) {
        this.initEStructuralFeature((EStructuralFeature)r, type, name, defaultValue, lowerBound, upperBound, containerClass, isTransient, isVolatile, isChangeable, isUnsettable, isUnique, isDerived, isOrdered);
        r.setContainment(isContainment);
        if (otherEnd != null) {
            r.setEOpposite(otherEnd);
        }
        r.setResolveProxies(isResolveProxies);
        return r;
    }

    private void initEStructuralFeature(EStructuralFeature s, EClassifier type, String name, String defaultValue, int lowerBound, int upperBound, Class<?> containerClass, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable, boolean isUnique, boolean isDerived, boolean isOrdered) {
        s.setName(name);
        ((EStructuralFeatureImpl)s).setContainerClass(containerClass);
        s.setTransient(isTransient);
        s.setVolatile(isVolatile);
        s.setChangeable(isChangeable);
        s.setUnsettable(isUnsettable);
        s.setUnique(isUnique);
        s.setDerived(isDerived);
        s.setOrdered(isOrdered);
        s.setLowerBound(lowerBound);
        s.setUpperBound(upperBound);
        s.setEType(type);
        if (defaultValue != null) {
            s.setDefaultValueLiteral(defaultValue);
        }
    }

    private void initEStructuralFeature(EStructuralFeature s, EGenericType type, String name, String defaultValue, int lowerBound, int upperBound, Class<?> containerClass, boolean isTransient, boolean isVolatile, boolean isChangeable, boolean isUnsettable, boolean isUnique, boolean isDerived, boolean isOrdered) {
        s.setName(name);
        ((EStructuralFeatureImpl)s).setContainerClass(containerClass);
        s.setTransient(isTransient);
        s.setVolatile(isVolatile);
        s.setChangeable(isChangeable);
        s.setUnsettable(isUnsettable);
        s.setUnique(isUnique);
        s.setDerived(isDerived);
        s.setOrdered(isOrdered);
        s.setLowerBound(lowerBound);
        s.setUpperBound(upperBound);
        s.setEGenericType(type);
        if (defaultValue != null) {
            s.setDefaultValueLiteral(defaultValue);
        }
    }

    protected EOperation addEOperation(EClass owner, EClassifier type, String name) {
        EOperation o = this.ecoreFactory.createEOperation();
        this.initEOperation(o, type, name);
        owner.getEOperations().add((Object)o);
        return o;
    }

    protected EOperation addEOperation(EClass owner, EClassifier type, String name, int lowerBound, int upperBound) {
        EOperation o = this.ecoreFactory.createEOperation();
        this.initEOperation(o, type, name, lowerBound, upperBound);
        owner.getEOperations().add((Object)o);
        return o;
    }

    protected EOperation addEOperation(EClass owner, EClassifier type, String name, int lowerBound, int upperBound, boolean isUnique, boolean isOrdered) {
        EOperation o = this.ecoreFactory.createEOperation();
        this.initEOperation(o, type, name, lowerBound, upperBound, isUnique, isOrdered);
        owner.getEOperations().add((Object)o);
        return o;
    }

    protected EOperation initEOperation(EOperation eOperation, EClassifier type, String name) {
        eOperation.setEType(type);
        eOperation.setName(name);
        return eOperation;
    }

    protected EOperation initEOperation(EOperation eOperation, EClassifier type, String name, int lowerBound, int upperBound) {
        this.initEOperation(eOperation, type, name);
        eOperation.setLowerBound(lowerBound);
        eOperation.setUpperBound(upperBound);
        return eOperation;
    }

    protected EOperation initEOperation(EOperation eOperation, EClassifier type, String name, int lowerBound, int upperBound, boolean isUnique, boolean isOrdered) {
        this.initEOperation(eOperation, type, name, lowerBound, upperBound);
        eOperation.setUnique(isUnique);
        eOperation.setOrdered(isOrdered);
        return eOperation;
    }

    protected void initEOperation(EOperation eOperation, EGenericType eGenericType) {
        eOperation.setEGenericType(eGenericType);
    }

    private EParameter internalAddEParameter(EOperation owner, EClassifier type, String name) {
        EParameter p = this.ecoreFactory.createEParameter();
        p.setEType(type);
        p.setName(name);
        owner.getEParameters().add((Object)p);
        return p;
    }

    protected void addEParameter(EOperation owner, EClassifier type, String name) {
        this.internalAddEParameter(owner, type, name);
    }

    protected void addEParameter(EOperation owner, EClassifier type, String name, int lowerBound, int upperBound) {
        EParameter p = this.internalAddEParameter(owner, type, name);
        p.setLowerBound(lowerBound);
        p.setUpperBound(upperBound);
    }

    protected EParameter addEParameter(EOperation owner, EClassifier type, String name, int lowerBound, int upperBound, boolean isUnique, boolean isOrdered) {
        EParameter p = this.internalAddEParameter(owner, type, name);
        p.setLowerBound(lowerBound);
        p.setUpperBound(upperBound);
        p.setUnique(isUnique);
        p.setOrdered(isOrdered);
        return p;
    }

    @Deprecated
    protected void addEParameter(EOperation owner, EGenericType type, String name, int lowerBound, int upperBound) {
        EParameter p = this.ecoreFactory.createEParameter();
        p.setEGenericType(type);
        p.setName(name);
        owner.getEParameters().add((Object)p);
        p.setLowerBound(lowerBound);
        p.setUpperBound(upperBound);
    }

    protected void addEParameter(EOperation owner, EGenericType type, String name, int lowerBound, int upperBound, boolean isUnique, boolean isOrdered) {
        EParameter p = this.ecoreFactory.createEParameter();
        p.setEGenericType(type);
        p.setName(name);
        owner.getEParameters().add((Object)p);
        p.setLowerBound(lowerBound);
        p.setUpperBound(upperBound);
        p.setUnique(isUnique);
        p.setOrdered(isOrdered);
    }

    protected void addEException(EOperation owner, EClassifier exception) {
        owner.getEExceptions().add((Object)exception);
    }

    protected void addEException(EOperation owner, EGenericType exception) {
        owner.getEGenericExceptions().add((Object)exception);
    }

    protected void addEEnumLiteral(EEnum owner, Enumerator e) {
        EEnumLiteralImpl l = (EEnumLiteralImpl)this.ecoreFactory.createEEnumLiteral();
        l.setInstance(e);
        l.setGeneratedInstance(true);
        owner.getELiterals().add((Object)l);
    }

    protected void addAnnotation(ENamedElement eNamedElement, String source, String[] details) {
        this.addAnnotation(eNamedElement, source, details, null);
    }

    protected void addAnnotation(ENamedElement eNamedElement, String source, String[] details, URI[] references) {
        this.addAnnotation(eNamedElement, 0, source, details, references);
    }

    protected void addAnnotation(ENamedElement eNamedElement, int depth, String source, String[] details) {
        this.addAnnotation(eNamedElement, depth, source, details, null);
    }

    protected void addAnnotation(ENamedElement eNamedElement, int depth, String source, String[] details, URI[] references) {
        EAnnotation eAnnotation = this.ecoreFactory.createEAnnotation();
        eAnnotation.setSource(source);
        EMap<String, String> theDetails = eAnnotation.getDetails();
        int i = 1;
        while (i < details.length) {
            theDetails.put((Object)details[i - 1], (Object)details[i]);
            i += 2;
        }
        Object annotations = eNamedElement.getEAnnotations();
        int i2 = 0;
        while (i2 < depth) {
            EList<EObject> childAnnotations = ((EAnnotation)annotations.get(annotations.size() - 1)).getContents();
            annotations = childAnnotations;
            ++i2;
        }
        annotations.add((Object)eAnnotation);
        if (references != null) {
            InternalEList eAnnotationReferences = (InternalEList)eAnnotation.getReferences();
            URI[] uRIArray = references;
            int n = references.length;
            int n2 = 0;
            while (n2 < n) {
                URI reference = uRIArray[n2];
                InternalEObject internalEObject = (InternalEObject)this.ecoreFactory.createEObject();
                internalEObject.eSetProxyURI(reference);
                eAnnotationReferences.addUnique(internalEObject);
                ++n2;
            }
        }
    }

    protected void initializeFromLoadedEPackage(EPackage target, EPackage source) {
        target.setName(source.getName());
        target.setNsPrefix(source.getNsPrefix());
        target.setNsURI(source.getNsURI());
        target.getEClassifiers().addAll(source.getEClassifiers());
        target.getEAnnotations().addAll(source.getEAnnotations());
        for (EPackage sourceSubpackage : source.getESubpackages()) {
            EPackage targetSubpackage = EPackage.Registry.INSTANCE.getEPackage(sourceSubpackage.getNsURI());
            this.initializeFromLoadedEPackage(targetSubpackage, sourceSubpackage);
            target.getESubpackages().add((Object)targetSubpackage);
        }
    }

    protected void fixEClassifiers() {
        int id = 0;
        for (EClassifierImpl eClassifier : this.getEClassifiers()) {
            if (!(eClassifier instanceof EClass)) continue;
            eClassifier.setClassifierID(id++);
            this.fixInstanceClass(eClassifier);
            this.fixEStructuralFeatures((EClass)((Object)eClassifier));
            this.fixEOperations((EClass)((Object)eClassifier));
        }
        for (EClassifierImpl eClassifier : this.getEClassifiers()) {
            if (eClassifier.metaObjectID != -1 || !(eClassifier instanceof EEnum)) continue;
            eClassifier.setClassifierID(id++);
            this.fixInstanceClass(eClassifier);
            this.fixEEnumLiterals((EEnum)((Object)eClassifier));
        }
        for (EClassifierImpl eClassifier : this.getEClassifiers()) {
            EDataType baseType;
            if (eClassifier.metaObjectID != -1 || !(eClassifier instanceof EDataType)) continue;
            eClassifier.setClassifierID(id++);
            if (eClassifier.getInstanceClassName() != "org.eclipse.emf.common.util.AbstractEnumerator" || !((baseType = ExtendedMetaData.INSTANCE.getBaseType((EDataType)((Object)eClassifier))) instanceof EEnum)) continue;
            eClassifier.setInstanceClass(baseType.getInstanceClass());
            this.setGeneratedClassName(eClassifier);
        }
    }

    protected void fixInstanceClass(EClassifier eClassifier) {
        if (eClassifier.getInstanceClassName() == null) {
            String className = this.getClass().getName();
            int i = className.lastIndexOf(46, className.lastIndexOf(46) - 1);
            className = i == -1 ? eClassifier.getName() : String.valueOf(className.substring(0, i + 1)) + eClassifier.getName();
            eClassifier.setInstanceClassName(className);
            this.setGeneratedClassName(eClassifier);
        }
    }

    protected void fixEStructuralFeatures(EClass eClass) {
        EList<EStructuralFeature> features = eClass.getEStructuralFeatures();
        if (!features.isEmpty()) {
            Class<?> containerClass = ExtendedMetaData.INSTANCE.getDocumentRoot(this) == eClass ? null : eClass.getInstanceClass();
            int id = eClass.getFeatureID((EStructuralFeature)features.get(0));
            for (EStructuralFeatureImpl eStructuralFeature : features) {
                eStructuralFeature.setFeatureID(id++);
                eStructuralFeature.setContainerClass(containerClass);
            }
        }
    }

    protected void fixEOperations(EClass eClass) {
        EList<EOperation> operations = eClass.getEOperations();
        if (!operations.isEmpty()) {
            int id = eClass.getOperationID((EOperation)operations.get(0));
            for (EOperationImpl eOperation : operations) {
                eOperation.setOperationID(id++);
            }
        }
    }

    protected void fixEEnumLiterals(EEnum eEnum) {
        Class<?> enumClass = eEnum.getInstanceClass();
        try {
            Method getter = enumClass.getMethod("get", Integer.TYPE);
            for (EEnumLiteral eEnumLiteral : eEnum.getELiterals()) {
                Enumerator instance = (Enumerator)getter.invoke(null, eEnumLiteral.getValue());
                eEnumLiteral.setInstance(instance);
                ((EEnumLiteralImpl)eEnumLiteral).setGeneratedInstance(true);
            }
        }
        catch (Exception exception) {
            // empty catch block
        }
    }

    @Override
    public BasicExtendedMetaData.EPackageExtendedMetaData getExtendedMetaData() {
        return this.ePackageExtendedMetaData;
    }

    @Override
    public void setExtendedMetaData(BasicExtendedMetaData.EPackageExtendedMetaData ePackageExtendedMetaData) {
        this.ePackageExtendedMetaData = ePackageExtendedMetaData;
    }

    @Override
    public EObject eObjectForURIFragmentSegment(String uriFragmentSegment) {
        EClassifier result = this.getEClassifierGen(uriFragmentSegment);
        return result != null ? result : super.eObjectForURIFragmentSegment(uriFragmentSegment);
    }

    protected static interface EBasicWhiteList {
    }
}

