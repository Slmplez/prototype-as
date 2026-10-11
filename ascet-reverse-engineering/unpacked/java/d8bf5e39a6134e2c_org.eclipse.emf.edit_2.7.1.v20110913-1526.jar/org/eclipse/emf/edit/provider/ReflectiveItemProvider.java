/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.util.BasicExtendedMetaData
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package org.eclipse.emf.edit.provider;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.ItemProviderAdapter;
import org.eclipse.emf.edit.provider.ViewerNotification;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ReflectiveItemProvider
extends ItemProviderAdapter
implements IEditingDomainItemProvider,
IStructuredItemContentProvider,
ITreeItemContentProvider,
IItemLabelProvider,
IItemPropertySource {
    protected List<EObject> allRoots;
    protected List<EPackage> allEPackages;
    protected List<EClass> allEClasses;

    public ReflectiveItemProvider(AdapterFactory adapterFactory) {
        super(adapterFactory);
    }

    @Override
    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        this.itemPropertyDescriptors = new ArrayList();
        for (EStructuralFeature eFeature : ((EObject)object).eClass().getEAllStructuralFeatures()) {
            if (eFeature instanceof EReference && ((EReference)eFeature).isContainment()) continue;
            this.itemPropertyDescriptors.add(new ItemPropertyDescriptor((AdapterFactory)((ComposeableAdapterFactory)this.adapterFactory).getRootAdapterFactory(), this.getFeatureText(eFeature), this.getResourceLocator().getString("_UI_Property_description", new Object[]{this.getFeatureText(eFeature), eFeature.getEType().getName()}), eFeature, eFeature.isChangeable(), ItemPropertyDescriptor.GENERIC_VALUE_IMAGE));
        }
        return this.itemPropertyDescriptors;
    }

    protected void gatherAllMetaData(EObject eObject) {
        EObject container = eObject.eContainer();
        if (container == null) {
            Object extendedMetaData = eObject.eResource() == null || eObject.eResource().getResourceSet() == null ? ExtendedMetaData.INSTANCE : new BasicExtendedMetaData(eObject.eResource().getResourceSet().getPackageRegistry());
            EReference xmlnsPrefixMapFeature = extendedMetaData.getXMLNSPrefixMapFeature(eObject.eClass());
            if (xmlnsPrefixMapFeature != null) {
                EMap map = (EMap)eObject.eGet((EStructuralFeature)xmlnsPrefixMapFeature);
                for (Map.Entry entry : map) {
                    EPackage ePackage = extendedMetaData.getPackage((String)entry.getValue());
                    if (ePackage == null) continue;
                    this.gatherMetaData((EModelElement)EcoreUtil.getRootContainer((EObject)ePackage));
                }
            }
        } else {
            this.gatherAllMetaData(container);
        }
        this.gatherMetaData((EModelElement)eObject.eClass());
    }

    protected List<EClass> getAllEClasses(EClass eClass) {
        this.gatherMetaData((EModelElement)eClass);
        return this.allEClasses;
    }

    protected List<EPackage> getAllEPackages(EClass eClass) {
        this.gatherMetaData((EModelElement)eClass);
        return this.allEPackages;
    }

    protected void gatherMetaData(EModelElement eModelElement) {
        if (this.allRoots == null) {
            this.allRoots = new ArrayList<EObject>();
            this.allEClasses = new ArrayList<EClass>();
            this.allEPackages = new ArrayList<EPackage>();
        }
        HashSet<EObject> roots = new HashSet<EObject>();
        EObject root = EcoreUtil.getRootContainer((EObject)eModelElement);
        while (true) {
            if (!this.allRoots.contains(root)) {
                ExtendedMetaData extendedMetaData;
                this.allRoots.add(root);
                Object object = extendedMetaData = root.eResource() == null || root.eResource().getResourceSet() == null ? ExtendedMetaData.INSTANCE : new BasicExtendedMetaData(root.eResource().getResourceSet().getPackageRegistry());
                if (root instanceof EPackage) {
                    this.allEPackages.add((EPackage)root);
                }
                TreeIterator i = root.eAllContents();
                while (i.hasNext()) {
                    EObject eObject = (EObject)i.next();
                    if (eObject instanceof EClassifier) {
                        extendedMetaData.getName((EClassifier)eObject);
                        if (eObject instanceof EClass) {
                            this.allEClasses.add((EClass)eObject);
                        }
                    } else if (eObject instanceof EStructuralFeature) {
                        extendedMetaData.getName((EStructuralFeature)eObject);
                    } else if (eObject instanceof EPackage) {
                        this.allEPackages.add((EPackage)eObject);
                    }
                    for (EReference eReference : eObject.eClass().getEAllReferences()) {
                        EObject otherRoot;
                        if (eReference.isDerived() || eReference.isContainer() || eReference.isContainment()) continue;
                        if (eReference.isMany()) {
                            List eObjects = (List)eObject.eGet((EStructuralFeature)eReference);
                            for (EObject crossReference : eObjects) {
                                EObject otherRoot2;
                                if (crossReference == null || this.allRoots.contains(otherRoot2 = EcoreUtil.getRootContainer((EObject)crossReference))) continue;
                                roots.add(otherRoot2);
                            }
                            continue;
                        }
                        EObject crossReference = (EObject)eObject.eGet((EStructuralFeature)eReference);
                        if (crossReference == null || this.allRoots.contains(otherRoot = EcoreUtil.getRootContainer((EObject)crossReference))) continue;
                        roots.add(otherRoot);
                    }
                }
            }
            if (roots.isEmpty()) break;
            Iterator i = roots.iterator();
            root = (EObject)i.next();
            i.remove();
        }
    }

    protected List<EClass> getAllChildConcreteSubclasses(EReference eReference) {
        EClass eClass = eReference.getEReferenceType();
        List<EClass> result = this.getAllConcreteSubclasses(eClass);
        if (eClass == EcorePackage.Literals.EOBJECT && eReference.getEAnnotation("http:///org/eclipse/emf/ecore/util/ExtendedMetaData") != null && !result.contains(XMLTypePackage.Literals.ANY_TYPE)) {
            result.add(XMLTypePackage.Literals.ANY_TYPE);
        }
        return result;
    }

    protected List<EClass> getAllConcreteSubclasses(EClass eClass) {
        ArrayList<EClass> result = new ArrayList<EClass>();
        if (eClass == EcorePackage.Literals.EOBJECT) {
            for (EClass otherEClass : this.getAllEClasses(eClass)) {
                if (otherEClass.isAbstract() || ExtendedMetaData.INSTANCE.isAnonymous((EClassifier)otherEClass)) continue;
                result.add(otherEClass);
            }
        } else if (ExtendedMetaData.INSTANCE.isAnonymous((EClassifier)eClass)) {
            result.add(eClass);
        } else {
            for (EClass otherEClass : this.getAllEClasses(eClass)) {
                if (otherEClass.isAbstract() || !eClass.isSuperTypeOf(otherEClass) || ExtendedMetaData.INSTANCE.isAnonymous((EClassifier)otherEClass)) continue;
                result.add(otherEClass);
            }
        }
        return result;
    }

    @Override
    protected Collection<? extends EStructuralFeature> getChildrenFeatures(Object object) {
        this.childrenFeatures = new ArrayList();
        EObject eObject = (EObject)object;
        EClass eClass = eObject.eClass();
        if (ExtendedMetaData.INSTANCE.getContentKind(eClass) != 3) {
            for (EReference eReference : eClass.getEAllReferences()) {
                if (!eReference.isContainment() || ExtendedMetaData.INSTANCE.getGroup((EStructuralFeature)eReference) != null) continue;
                this.childrenFeatures.add(eReference);
            }
        }
        for (EAttribute eAttribute : eClass.getEAllAttributes()) {
            if (ExtendedMetaData.INSTANCE.getGroup((EStructuralFeature)eAttribute) != null || eAttribute.getEType().getInstanceClass() != FeatureMap.Entry.class || eAttribute.isDerived()) continue;
            this.childrenFeatures.add(eAttribute);
        }
        return this.childrenFeatures;
    }

    @Override
    public Object getImage(Object object) {
        EObject eObject = (EObject)object;
        EClass eClass = eObject.eClass();
        return URI.createURI((String)(String.valueOf(this.getResourceLocator().getImage("full/obj16/Item").toString()) + "#" + eClass.getName()));
    }

    @Override
    public String getText(Object object) {
        Object value;
        EObject eObject = (EObject)object;
        EClass eClass = eObject.eClass();
        String label = this.format(this.capName(eClass.getName()), ' ');
        EStructuralFeature feature = this.getLabelFeature(eClass);
        if (feature != null && (value = eObject.eGet(feature)) != null) {
            return String.valueOf(label) + " " + value.toString();
        }
        return label;
    }

    protected EStructuralFeature getLabelFeature(EClass eClass) {
        EAttribute result = null;
        for (EAttribute eAttribute : eClass.getEAllAttributes()) {
            if (eAttribute.isMany() || eAttribute.getEType().getInstanceClass() == FeatureMap.Entry.class) continue;
            if ("name".equalsIgnoreCase(eAttribute.getName())) {
                result = eAttribute;
                break;
            }
            if (result == null) {
                result = eAttribute;
                continue;
            }
            if (eAttribute.getEAttributeType().getInstanceClass() != String.class || result.getEAttributeType().getInstanceClass() == String.class) continue;
            result = eAttribute;
        }
        return result;
    }

    protected String capName(String name) {
        return name.length() == 0 ? name : String.valueOf(name.substring(0, 1).toUpperCase()) + name.substring(1);
    }

    public String format(String name, char separator) {
        StringBuffer result = new StringBuffer();
        Iterator<String> i = this.parseName(name, '_').iterator();
        while (i.hasNext()) {
            String component = i.next();
            result.append(component);
            if (!i.hasNext() || component.length() <= 1) continue;
            result.append(separator);
        }
        return result.toString();
    }

    protected List<String> parseName(String sourceName, char sourceSeparator) {
        ArrayList<String> result = new ArrayList<String>();
        StringBuffer currentWord = new StringBuffer();
        int length = sourceName.length();
        boolean lastIsLower = false;
        int index = 0;
        while (index < length) {
            char curChar = sourceName.charAt(index);
            if (Character.isUpperCase(curChar) || !lastIsLower && Character.isDigit(curChar) || curChar == sourceSeparator) {
                if (lastIsLower || curChar == sourceSeparator) {
                    result.add(currentWord.toString());
                    currentWord = new StringBuffer();
                }
                lastIsLower = false;
            } else {
                int currentWordLength;
                if (!lastIsLower && (currentWordLength = currentWord.length()) > 1) {
                    char lastChar = currentWord.charAt(--currentWordLength);
                    currentWord.setLength(currentWordLength);
                    result.add(currentWord.toString());
                    currentWord = new StringBuffer();
                    currentWord.append(lastChar);
                }
                lastIsLower = true;
            }
            if (curChar != sourceSeparator) {
                currentWord.append(curChar);
            }
            ++index;
        }
        result.add(currentWord.toString());
        return result;
    }

    protected List<? extends EStructuralFeature> getAllDelegatedFeatures(EStructuralFeature feature) {
        if (!FeatureMapUtil.isFeatureMap((EStructuralFeature)feature)) {
            return Collections.emptyList();
        }
        EClass eClass = feature.getEContainingClass();
        ArrayList<Object> delegated = new ArrayList<Object>();
        if (ExtendedMetaData.INSTANCE.getMixedFeature(eClass) == feature) {
            delegated.add(XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__COMMENT);
            delegated.add(XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__TEXT);
            delegated.add(XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__PROCESSING_INSTRUCTION);
            if (ExtendedMetaData.INSTANCE.getDocumentRoot(eClass.getEPackage()) != eClass) {
                delegated.add(XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__CDATA);
            }
            for (EStructuralFeature otherFeature : eClass.getEAllStructuralFeatures()) {
                if (otherFeature == feature || !otherFeature.isDerived() || !otherFeature.isChangeable() || ExtendedMetaData.INSTANCE.getGroup(otherFeature) != null) continue;
                delegated.add(otherFeature);
            }
        } else {
            switch (ExtendedMetaData.INSTANCE.getFeatureKind(feature)) {
                case 6: {
                    HashSet<EStructuralFeature> allDelegated = new HashSet<EStructuralFeature>();
                    HashSet<String> hashSet = new HashSet<String>();
                    for (EStructuralFeature otherFeature : eClass.getEStructuralFeatures()) {
                        if (otherFeature == feature || !otherFeature.isDerived() || ExtendedMetaData.INSTANCE.getGroup(otherFeature) != feature) continue;
                        if (otherFeature.isChangeable()) {
                            delegated.add(otherFeature);
                            hashSet.add(String.valueOf(ExtendedMetaData.INSTANCE.getNamespace(otherFeature)) + "#" + ExtendedMetaData.INSTANCE.getName(otherFeature));
                        }
                        allDelegated.add(otherFeature);
                    }
                    for (EPackage ePackage : this.getAllEPackages(eClass)) {
                        EClass documentRootEClass = ExtendedMetaData.INSTANCE.getDocumentRoot(ePackage);
                        if (documentRootEClass == null) continue;
                        for (EStructuralFeature otherFeature : documentRootEClass.getEAllStructuralFeatures()) {
                            if (otherFeature == feature || !otherFeature.isChangeable() || !otherFeature.isDerived() || !allDelegated.contains(ExtendedMetaData.INSTANCE.getAffiliation(eClass, otherFeature)) || !hashSet.add(String.valueOf(ExtendedMetaData.INSTANCE.getNamespace(otherFeature)) + "#" + ExtendedMetaData.INSTANCE.getName(otherFeature))) continue;
                            delegated.add(otherFeature);
                        }
                    }
                    break;
                }
                case 3: 
                case 5: {
                    for (EPackage ePackage : this.getAllEPackages(eClass)) {
                        EClass documentRootEClass = ExtendedMetaData.INSTANCE.getDocumentRoot(ePackage);
                        if (documentRootEClass == null) continue;
                        for (EStructuralFeature otherFeature : documentRootEClass.getEAllStructuralFeatures()) {
                            if (otherFeature == feature || !otherFeature.isDerived() || !otherFeature.isChangeable() || ExtendedMetaData.INSTANCE.getAffiliation(eClass, otherFeature) != feature) continue;
                            delegated.add(otherFeature);
                        }
                    }
                    break;
                }
            }
        }
        ArrayList<Object> result = new ArrayList<Object>();
        for (EStructuralFeature eStructuralFeature : delegated) {
            if (FeatureMapUtil.isFeatureMap((EStructuralFeature)eStructuralFeature)) {
                result.addAll(this.getAllDelegatedFeatures(eStructuralFeature));
                continue;
            }
            result.add(eStructuralFeature);
        }
        return result;
    }

    @Override
    protected void collectNewChildDescriptors(Collection<Object> newChildDescriptors, Object object) {
        this.gatherAllMetaData((EObject)object);
        for (EStructuralFeature eStructuralFeature : this.getChildrenFeatures(object)) {
            if (FeatureMapUtil.isFeatureMap((EStructuralFeature)eStructuralFeature)) {
                for (EStructuralFeature eStructuralFeature2 : this.getAllDelegatedFeatures(eStructuralFeature)) {
                    if (eStructuralFeature2 instanceof EAttribute) {
                        EDataType type = ((EAttribute)eStructuralFeature2).getEAttributeType();
                        Object value = eStructuralFeature2.getDefaultValue();
                        if (value == null) {
                            Class instanceClass = type.getInstanceClass();
                            if (instanceClass == String.class) {
                                value = "";
                            } else if (instanceClass == Boolean.class) {
                                value = Boolean.FALSE;
                            } else if (instanceClass == Character.class) {
                                value = Character.valueOf('\u0000');
                            } else {
                                String literal = instanceClass != null && Number.class.isAssignableFrom(instanceClass) ? "0" : "";
                                try {
                                    value = EcoreUtil.createFromString((EDataType)type, (String)literal);
                                }
                                catch (Exception exception) {
                                    // empty catch block
                                }
                            }
                        }
                        if (value == null) continue;
                        newChildDescriptors.add(this.createChildParameter(eStructuralFeature, FeatureMapUtil.createEntry((EStructuralFeature)eStructuralFeature2, (Object)value)));
                        continue;
                    }
                    if (!(eStructuralFeature2 instanceof EReference)) continue;
                    for (EClass eClass : this.getAllChildConcreteSubclasses((EReference)eStructuralFeature2)) {
                        FeatureMap.Entry entry = FeatureMapUtil.createEntry((EStructuralFeature)eStructuralFeature2, (Object)EcoreUtil.create((EClass)eClass));
                        newChildDescriptors.add(this.createChildParameter(eStructuralFeature, entry));
                    }
                }
                continue;
            }
            if (!(eStructuralFeature instanceof EReference) || !eStructuralFeature.isChangeable()) continue;
            for (EClass eClass : this.getAllChildConcreteSubclasses((EReference)eStructuralFeature)) {
                newChildDescriptors.add(this.createChildParameter(eStructuralFeature, EcoreUtil.create((EClass)eClass)));
            }
        }
    }

    @Override
    public String getCreateChildText(Object owner, Object feature, Object child, Collection<?> selection) {
        if (feature instanceof EStructuralFeature && FeatureMapUtil.isFeatureMap((EStructuralFeature)((EStructuralFeature)feature))) {
            FeatureMap.Entry entry = (FeatureMap.Entry)child;
            feature = entry.getEStructuralFeature();
            child = entry.getValue();
        }
        String childType = feature instanceof EAttribute ? this.getTypeText((EAttribute)feature) : this.getTypeText(child);
        return this.getResourceLocator().getString("_UI_CreateChild_text2", new Object[]{childType, this.getFeatureText(feature), this.getTypeText(owner)});
    }

    @Override
    public Object getCreateChildImage(Object owner, Object feature, Object child, Collection<?> selection) {
        if (feature instanceof EStructuralFeature && FeatureMapUtil.isFeatureMap((EStructuralFeature)((EStructuralFeature)feature))) {
            FeatureMap.Entry entry = (FeatureMap.Entry)child;
            feature = entry.getEStructuralFeature();
            child = entry.getValue();
        }
        if (feature instanceof EReference && child instanceof EObject) {
            EReference reference = (EReference)feature;
            EClass parentClass = reference.getEContainingClass();
            EClass childClass = ((EObject)child).eClass();
            return URI.createURI((String)(String.valueOf(this.getResourceLocator().getImage("full/ctool16/CreateChild").toString()) + "#" + parentClass.getName() + "/" + childClass.getName()));
        }
        return this.getResourceLocator().getImage("full/ctool16/CreateChild");
    }

    @Override
    protected String getTypeText(Object object) {
        String text = object instanceof EObject ? ((EObject)object).eClass().getName() : this.getString("_UI_Unknown_type");
        return this.format(this.capName(text), ' ');
    }

    @Override
    protected String getTypeText(EAttribute attribute) {
        return this.format(this.capName(attribute.getEAttributeType().getName()), ' ');
    }

    @Override
    protected String getFeatureText(Object feature) {
        String text = feature instanceof EStructuralFeature ? ((EStructuralFeature)feature).getName() : this.getResourceLocator().getString("_UI_Unknown_feature");
        return this.format(this.capName(text), ' ');
    }

    public void notifyChanged(Notification notification) {
        this.updateChildren(notification);
        EObject object = (EObject)notification.getNotifier();
        EClass eClass = object.eClass();
        EStructuralFeature feature = (EStructuralFeature)notification.getFeature();
        boolean child = ExtendedMetaData.INSTANCE.getContentKind(eClass) != 3 && feature instanceof EReference && ((EReference)feature).isContainment() && ExtendedMetaData.INSTANCE.getGroup(feature) == null;
        boolean label = feature == this.getLabelFeature(eClass);
        this.fireNotifyChanged(new ViewerNotification(notification, object, child, !(child |= feature instanceof EAttribute && ExtendedMetaData.INSTANCE.getGroup(feature) == null && feature.getEType().getInstanceClass() == FeatureMap.Entry.class && !feature.isDerived()) || child && label));
    }

    @Override
    protected boolean isWrappingNeeded(Object object) {
        this.wrappingNeeded = null;
        return super.isWrappingNeeded(object);
    }
}

